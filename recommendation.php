<?php
    include 'db.php';
   
Class Rating{    
    function updateRating(){
        global $link;
        $query_string = "SELECT book_id, AVG(rating) as overallRating, count(rating) as rating_number FROM reviews GROUP BY book_id";
        $result = mysqli_query($link,$query_string);
        $num_rows = mysqli_num_rows($result);
        if($num_rows > 0){
            while($a_row = mysqli_fetch_assoc($result)){
                $book_id = $a_row['book_id'];
                $overallRating = $a_row['overallRating'];
                $ranking_number = $a_row['rating_number'];            
                mysqli_query($link,"UPDATE books_meta SET overallRating = '$overallRating', rating_number = '$ranking_number' WHERE book_id= '$book_id'");
            }
            echo '<script language="javascript">
                alert("Rating is updated!");
                </script>';
        }else{
            echo '<script language="javascript">
                alert("Fail to update rating!");
                </script>';
        }
    }
}
class Recommend {    
    
    protected function getVector(){
        global $link;
        $query_string = "SELECT DISTINCT reviewer_id, book_id, rating FROM reviews";
        $result = mysqli_query($link,$query_string);
        $num_rows =  mysqli_num_rows($result);
        $ratingArr = array();
        if($num_rows > 0){
            while($a_row = mysqli_fetch_assoc($result)){
                $rating = array('reviewer_id' => $a_row['reviewer_id'],
                        'book_id' => $a_row['book_id'],                         
                        'rating' => $a_row['rating']);
                $ratingArr[]=$rating;
            }
        }
        $vecArr = array();
        foreach ($ratingArr as $value) {
            $vecArr[$value['book_id']][]=array('reviewer_id' => $value['reviewer_id'],
                                               'rating' => $value['rating']);
        }      
        return $vecArr;
    }
    
    protected function similarity($vecArr, $book_id, $other_book_id){
        $simCount = 0;
        $sum = 0;
        $abVector1 = 0;
        $abVector2 = 0;
        $abVector = 0;
        foreach ($vecArr[$book_id] as $value1) {
            foreach($vecArr[$other_book_id] as $value2){
                if($value1['reviewer_id'] == $value2['reviewer_id']){
                    $sum += $value1['rating']*$value2['rating'];
                    $abVector1 += $value1['rating']*$value1['rating'];
                    $abVector2 += $value2['rating']*$value2['rating'];
                    $simCount ++;
                }
            }
        }
        if($simCount == 0){
            return 0;
        }else{
            $abVector = sqrt(pow($abVector1,2) * pow($abVector2,2));
            return $sum/$abVector;
        }
    }
    
    protected function findItem($vecArr, $book_id) {
    $simArr = array();
    foreach ($vecArr as $key => $value) {
        if($key !== $book_id){
            $sim = $this->similarity($vecArr, $book_id, $key);
            $simArr[$key] = $sim;
        }else{
            $simArr[$key] = 1;
        }
    }
    arsort($simArr);
    return $simArr;
   }
   
    public function bestSeller(){
        global $link; 
        $recommendation = array();
        $query = "SELECT book_id FROM books_meta ORDER BY salesRank";
        $result = mysqli_query($link, $query);
        $num_rows = mysqli_num_rows($result);
        if($num_rows > 0){
            while($a_row = mysqli_fetch_assoc($result)){
                $key = $a_row['book_id'];
                $recommendation[]=$key;
            }
        }
        return array_unique($recommendation);
    }
   
    public function unpersonalizedRecomm($book_id){
        $vecArr = $this-> getVector();
        $simArr = $this-> findItem($vecArr,$book_id);
        $recommendation = array_keys($simArr);
        return array_unique($recommendation);
    }
    
    public function personalizedRecomm($user_id){
        global $link;
        $vecArr = $this-> getVector();
        $total = 0;
        $simSum = 0;
        $ratedBook = array();
        $predictRating = array();
        $recommendation = array();
        $query = "SELECT book_id, rating FROM reviews WHERE reviewer_id = '$user_id'";
        $result = mysqli_query($link, $query);
        $num_rows = mysqli_num_rows($result);
        if($num_rows > 0){
            while($a_row = mysqli_fetch_assoc($result)){
                $key = $a_row['book_id'];
                $rating = $a_row['rating'];
                $ratedBook[$key] = $rating;
            }
            foreach($vecArr as $key => $value){
                foreach($ratedBook as $ratedbook => $rated){
                    if($key !== $ratedbook){
                        $rating = $rated;
                        $similarity = $this -> similarity($vecArr,$ratedbook,$key);
                        $total += $rating * $similarity;
                        $simSum += $similarity;
                    }else{
                        $predictRating[$key]=$rated;
                    }
                }
                if($simSum != 0){
                    $predictRating[$key]=$total/$simSum;
                }
                $total = 0;
                $simSum = 0;
            }
            foreach ($predictRating as $value) {
                if($value !=0){
                    arsort($predictRating, SORT_DESC);
                    $recommendation=array_keys($predictRating);
                    return array_unique($recommendation);
                }
            }
        }else{
            $recommendation = $this-> bestSeller();
            return array_unique($recommendation);
        }
    }
}
?>