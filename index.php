<?php
include 'db.php';
require_once('recommendation.php');
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>Book Store</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<?php
$re = new Recommend();
$recommendation = $re->unpersonalizedRecomm($book_id);

foreach (array_slice($recommendation,1,6) as $recomm_book_id) {
	$query_string1 = "SELECT DISTINCT * FROM books_meta WHERE book_id = '$recomm_book_id'";
	$result1 = mysqli_query($link,$query_string1);
	$num_rows1 = mysqli_num_rows($result1);
	
	if ($num_rows1 == 1 ){
		$a_row = mysqli_fetch_assoc($result1);
		$a_book_id = $a_row['book_id'];
		$a_book_name = substr($a_row['book_name'],0,18);
		$a_price = $a_row['book_price'];
		$a_rating = $a_row['overallRating'];
		$a_imUrl = $a_row['imUrl'];
	}

?>

	<!-- Unpersonalized Recommendation-->
	<div class="col-12 col-md-6 col-lg-2">
		<div class="card">
			<a href="product.php?bookid=<?php echo $a_book_id;?>" title="<?php echo $a_row['book_name'];?>"><img class="card-img-top" src="<?php echo $a_imUrl;?>" alt="Product Image" width="100" height="200"></a>
			<div class="card-body">
				<p class="card-title text-center" style="font-size:15px;"><a href="product.php?bookid=<?php echo $a_book_id;?>" title="<?php echo $a_row['book_name'];?>"><?php echo $a_book_name;?></a></p>
				<p class="card-text text-center">
					<span class="fa fa-star <?php if($a_rating >= 1) {echo "checked"; }?>"></span>
					<span class="fa fa-star <?php if($a_rating >= 2) {echo "checked"; }?>"></span>
					<span class="fa fa-star <?php if($a_rating >= 3) {echo "checked"; }?>"></span>
					<span class="fa fa-star <?php if($a_rating >= 4) {echo "checked"; }?>"></span>
					<span class="fa fa-star <?php if($a_rating >= 5) {echo "checked"; }?>"></span>
					(<?php echo round($a_rating,1);?>/5)
				</p>
				<a href="product.php?bookid=<?php echo $a_book_id;?>" title="<?php echo $a_row['book_name'];?>" style="text-decoration:none;"><p class="btn btn-sm btn-danger btn-block" style="margin-bottom: 0;"><?php echo "$$a_price";?></p></a>
			</div>
		</div>
	</div>
<?php }?>

<?php 
$recommendation2 = $re->personalizedRecomm($_SESSION["uid"]);  // check if user is loged in by examing session id

foreach (array_slice($recommendation2,1,6) as $recomm_book_id) {
	$query_string2 = "SELECT DISTINCT * FROM books_meta WHERE book_id = '$recomm_book_id'";
	$result2 = mysqli_query($link,$query_string2);
	$num_rows2 = mysqli_num_rows($result2);
	if ($num_rows2 == 1 ){
		$b_row = mysqli_fetch_assoc($result2);
		$b_book_id = $b_row['book_id'];
		$b_book_name = substr($b_row['book_name'],0,18);
		$b_price = $b_row['book_price'];
		$b_rating = $b_row['overallRating'];
		$b_imUrl = $b_row['imUrl'];
	}
?>
	<!-- Personalized Recommendation-->
	<div class="col-12 col-md-6 col-lg-2">
        <div class="card">
            <a href="product.php?bookid=<?php echo $b_book_id;?>" title="<?php echo $b_row['book_name'];?>"><img class="card-img-top" src="<?php echo $b_imUrl;?>" alt="Product Image" width="100" height="200"></a>
            <div class="card-body">
                <p class="card-title text-center" style="font-size:15px;"><a href="product.php?bookid=<?php echo $b_book_id;?>" title="<?php echo $b_row['book_name'];?>"><?php echo $b_book_name;?></a></p>
                <p class="card-text text-center">
                    <span class="fa fa-star <?php if($b_rating >= 1) {echo "checked"; }?>"></span>
                    <span class="fa fa-star <?php if($b_rating >= 2) {echo "checked"; }?>"></span>
                    <span class="fa fa-star <?php if($b_rating >= 3) {echo "checked"; }?>"></span>
                    <span class="fa fa-star <?php if($b_rating >= 4) {echo "checked"; }?>"></span>
                    <span class="fa fa-star <?php if($b_rating >= 5) {echo "checked"; }?>"></span>
                    (<?php echo round($b_rating,1);?>/5)
                </p>
                <a href="product.php?bookid=<?php echo $b_book_id;?>" title="<?php echo $b_row['book_name'];?>" style="text-decoration:none;"><p class="btn btn-sm btn-danger btn-block" style="margin-bottom: 0;"><?php echo "$$b_price";?></p></a>
            </div>
        </div>
    </div>
<?php }?>
</body>
</html>