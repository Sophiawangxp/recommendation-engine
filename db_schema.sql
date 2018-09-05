-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2012 at 03:32 PM
-- Server version: 5.5.28
-- PHP Version: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2018 at 07:44 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recommender`
--

-- --------------------------------------------------------

--
-- Table structure for table `books_meta`
--

DROP TABLE IF EXISTS `books_meta`;
CREATE TABLE IF NOT EXISTS `books_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(255) NOT NULL,
  `book_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `book_price` double NOT NULL,
  `salesRank` int(10) DEFAULT NULL,
  `imUrl` varchar(255) DEFAULT NULL,
  `rating_number` int(10) DEFAULT NULL,
  `overallRating` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `books_meta`
--

INSERT INTO `books_meta` (`id`, `book_id`, `book_category`, `book_description`, `book_name`, `book_author`, `book_price`, `salesRank`, `imUrl`, `rating_number`, `overallRating`) VALUES
(1, '000100039X', 'Criticism, Contemporary', 'In a distant, timeless place, a mysterious prophet walks the sands. At the moment of his departure, he wishes to offer the people gifts but possesses nothing. The people gather round, each asks a question of the heart, and the man\'s wisdom is his gift. It is Gibran\'s gift to us, as well, for Gibran\'s prophet is rivaled in his wisdom only by the founders of the world\'s great religions. On the most basic topics--marriage, children, friendship, work, pleasure--his words have a power and lucidity that in another era would surely have provoked the description \"divinely inspired.\" Free of dogma, free of power structures and metaphysics, consider these poetic, moving aphorisms a 20th-century supplement to all sacred traditions--as millions of other readers already have.--Brian Bruya--This text refers to theHardcoveredition.', 'The Prophet', 'Kahlil Gibran', 3.99, 587803, 'http://ecx.images-amazon.com/images/I/81ZKLPivYUL.jpg', 42, 4.5714),
(2, '0001055178', 'Historical, Contemporary, Literature', 'Beryl Bainbridge seems drawn to disaster. First she tackled the  unfortunate Scott expedition to the South Pole inThe Birthday Boys; later (but emphatically pre-DiCaprio) came the sinking of the Titanic, inEvery Man for Himself. Now, in her 3rd historical novel (and her 16th overall), she takes on the Crimean War, and the result is a slim, gripping volume with all of the doomed intensity of the Light Brigade\'s charge--but, thankfully, without the Tennysonian bombast. \"Some pictures,\" a character confides, \"would only cause alarm to ordinary folk.\" There\'s a warning concealed here, and one that easily disturbed readers would do well to heed:Master Georgieis intense, disturbing, revelatory--and not always pretty to look at.Bainbridge\'s narrative circles round the enigmatic figure of George Hardy, a surgeon, amateur photographer, alcoholic, and repressed homosexual who counters the dissipation of his prosperous Liverpool life by heading for the Crimean Peninsula in 1854. His journey and subsequent tour of duty are told in three very different voices: Myrtle, an orphan whose lifelong loyalty to her \"Master Georgie\" becomes an overriding obsession; Pompey Jones, street urchin, fire-eater, photographer, and George\'s sometime lover; and Dr. Potter, George\'s scholarly brother-in-law, whose retreat from the war\'s carnage and into books takes on a tinge of madness.United by a sudden death in a Liverpool brothel in 1846, these characters plumb the curious workings of love, war, class, and fate. In between, Bainbridge frames an unforgettable series oftableaux morts: a dying soldier, one lens of his glasses \"fractured into a spider\'s web\"; a decapitated leg, toes \"poking through the shreds of a cavalry boot\"; two dead men \"on their knees, facing one another, propped up by the pat-a-cake thrust of their hands.\" Glimpsed as if sidewise and then passed over in language that is as understated as it is lovely, these are images that sear into the brain.Master Georgieis full of such moments, horrors painted with an exquisite brush.--Mary Park--This text refers to an out of print or unavailable edition of this title.', 'Master Georgie', 'Beryl Bainbridge', 16.95, 14149327, 'http://ecx.images-amazon.com/images/I/51ZSC6TKS3L.jpg', 9, 3.6667),
(3, '0002005395', 'Literature, Fiction, Historical', 'Set during 1915-19 in Canada, United States, England, Belgium and France, this is the story of a young woman in her 20\'s, Grania O\' Neill (pronounced GRAW-NEE-YA, an Irish name meaning \"Love\"), profoundly deaf from the age of 5 as a result of scarlet fever. She marries Jim Lloyd, a hearing man who, 2 weeks after their marriage, leaves home in Ontario to serve his King and country and \"do his bit for Mother England.\" Jim tries in every possible way to understand his wife\'s experience of deafness, and together they explore their love through the silence in which she lives.', 'Deafening', 'Frances Itani', 9.39, 10681705, 'http://ecx.images-amazon.com/images/I/415HPT70H7L.jpg', 9, 4.3333),
(4, '0002007770', 'Historical', 'Over 10,000,000 copies in print worldwide #1 New York Times Bestseller A Los Angeles Times Bestseller A Wall Street Journal Bestseller A Newsday Favorite Book of 2006 A USA Today Bestseller A Major Motion Picture starring Reese Witherspoon, Robert Pattinson, and Christoph Waltz Jacob Janowski\'s luck had run out--orphaned and penniless, he had no direction until he landed on a rickety train that was home to the Benzini Brothers Most Spectacular Show on Earth. A veterinary student just shy of a degree, he was put in charge of caring for the circus menagerie. It was the Great Depression and for Jacob the circus was both his salvation and a living hell. There he met Marlena, the beautiful equestrian star married to August, the charismatic but brutal animal trainer. And he met Rosie, an untrainable elephant who was the great hope for this third-rate traveling show. The bond that grew among this group of misfits was one of love and trust, and ultimately, it was their only hope for survival.', 'Water For Elephants', 'Sara Gruen', 8.52, 2296729, 'http://ecx.images-amazon.com/images/I/511VYFJMJDL.jpg', 105, 4.2762),
(5, '0002051850', 'Anthologies, Contemporary', 'The story of Robert Jordan, a young American in the International Brigades attached to an antifascist guerilla unit in the mountains of Spain, it tells of loyalty and courage, love and defeat, and the tragic death of an ideal. In his portrayal of Jordan\'s love for the beautiful Maria and his superb account of El Sordo\'s last stand, in his brilliant travesty of La Pasionaria and his unwillingness to believe in blind faith, Hemingway surpasses his achievement in The Sun Also Rises and A Farewell to Arms to create a work at once rare and beautiful, strong and brutal, compassionate, moving, and wise. \"If the function of a writer is to reveal reality,\" Maxwell Perkins wrote Hemingway after reading the manuscript, \"no one ever so completely performed it.\" Greater in power, broader in scope, and more intensely emotional than any of the author\'s previous works, it stands as one of the best war novels of all time.', 'For Whom the Bell Tolls', 'Ernest Hemingway', 8.99, 1100694, 'http://ecx.images-amazon.com/images/I/5122XJRJyrL.jpg', 101, 4.4059),
(6, '0002113570', 'Science, Animals', '\"An instant animal classic.\"   --Time\"Apart from its enormous scientific value, IN THE SHADOW OF MAN is absolutely fascinating to read as a story of discovery . . . The whole book is enthralling.\"  --Boston Globe\"I can\'t imagine a more vivid or unexpectedly moving introduction to chimpanzees in the wild than Jane Goodall\'s.\" -- George Stade  --The New York Times\"Jane Goodall\'s work with chimpanzees represents one of the Western world\'s great scientific achievements.\"   --Stephen Jay Gould--This text refers to an out of print or unavailable edition of this title.', 'In the Shadow of Man', 'Jane Goodall', 12.1, 571745, 'http://ecx.images-amazon.com/images/I/51iMi0zYqeL.jpg', 8, 4.75);


--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `quantity` int(4) NOT NULL,
  `subtotal` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `book_id`, `quantity`, `subtotal`) VALUES
(1, 'AHXL1V6N74', '0307265439', 1, 7.99),
(3, 'KVC2IUTNF8', '0307387135', 1, 8.79),
(5, 'EVWLF2TL52', '0307395022', 1, 9.99),
(7, '8DCXSPY7QO', '0002007770', 1, 8.52),
(9, 'JVN5HOEH9J', '0002005395', 3, 28.17),
(11, 'J04611QAVG', '0002113570', 1, 12.1),
(13, 'HPRXRDX1IN', '000215725X', 1, 10.7),
(15, 'WPR1956HFK', '0064410161', 1, 5.99);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reviewer_id` varchar(255) NOT NULL,
  `book_id` varchar(255) NOT NULL,
  `reviewer_name` varchar(255) DEFAULT NULL,
  `review_text` text,
  `rating` int(1) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5806 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `book_id`, `reviewer_name`, `review_text`, `rating`, `summary`) VALUES
(1, 'S166WSCFIFP5', '000100039X', 'adead_poet@hotmail.com \"adead_poet@hotmail.com\"', 'This is one my must have books. It is a masterpiece of spirituality. I\'ll be the first to admit, its literary quality isn\'t much. It is rather simplistically written, but the message behind it is so powerful that you have to read it. It will take you to enlightenment.', 5, 'close to god'),
(2, 'A2XQ5LZHTD4AFT', '000100039X', 'Alaturka', 'A timeless classic.  It is a very demanding and assuming title, but Gibran backs it up with some excellent style and content.  If he had the means to publish it a century or two earlier, he could have inspired a new religion.From the mouth of an old man about to sail away to a far away destination, we hear the wisdom of life and all important aspects of it.  It is a messege.  A guide book.  A Sufi sermon. Much is put in perspective without any hint of a dogma.  There is much that hints at his birth place, Lebanon where many of the old prophets walked the Earth and where this book project first germinated most likely.Probably becuase it was written in English originally, the writing flows, it is pleasant to read, and the charcoal drawings of the author decorating the pages is a plus.  I loved the cover.', 5, 'A Modern Rumi'),
(3, 'A3V1MKC2BVWY48', '000100039X', 'Alex Dawson', 'Reading this made my mind feel like a still pool of water, cool and quiet in a mossy grotto.  It\'s direct and simple wisdom has a depth of complexity that takes a quiet day to sink in, leaving you at peace.  It is best to set time aside for it, relax, absorb, and let it softly clear your mind.', 5, 'This book will bring you peace'),
(4, 'A2LBBQHYLEHM7P', '000100039X', 'Amazon Customer \"Full Frontal Nerdity\"', 'An amazing work. Realizing extensive use of Biblical imagery and sentence structure, &#34;The Prophet&#34; by Khalil Gibran is a literary classic. Influencing the Free Love movement of the 1960\'s, Gibran\'s master work explores themes of love, longing and loss.', 5, 'A Modern Classic'),
(5, 'A2I35JB67U20C0', '000100039X', 'Amazon Customer', 'When I was in college in the 70\'s this book had a revival and I did not read it then.  Recently a friend (who is 90) and I were talking about work and she said: &quot;work is love made visible,&quot; and told me it was from the Prophet.  I though that was so beautiful I got the book and was not disappointed.You see, if you have ideas and you do not realize them, then they are nothing, and if your ideas do not come from love and joy, then they are bitter and what they produce will be bitter, but if they flow from love and joy, then their realization will be love and joy, thus work is love made visible.He says it WAY better that I do and says much more in just a few paragraphs.  But as you can see from the example, what he says is not religious, but positive ways of looking at things.  Since I rediscoverd the book I have given away many copies and everyone I have given it to sincerly thanked me.', 5, 'Everyone should have this book'),
(6, 'A1TT4CY55WLHAR', '000100039X', 'anonymous', 'I have the 1972 version, bought in 1974. The 1972 version originally had a dust jacket but my dust jacket is long gone. This particular rendition has had many re-printings, for a reason: it\'s very popular. The textured paper, old-style typography, and leather cover are better than a plain-old paperback. The size is diminutive, which is perfect for this book.', 5, 'textured paper, old-style typography, and leather cover'),
(7, 'A1NPNGWBVD9AK3', '000100039X', 'Bruce Kendall \"BEK\"', 'This is one of the first (literary) books I recall reading. My mother kept a collection of Gibran\'s works that she often read. I was curious to see what attracted her, so I looked into them too ( I was either eight or nine  at the time). I believe that was my first taste of spirituality and seemed  at the time more relevant than what I was being force-fed by nuns in  catechism class. Rereading Gibran now, I\'m struck by the notion that Hesse  must have been aware of these texts before he wrote Siddhartha. They  contain many of the same themes: No one else can guide you on your path.  You must select your own course. Preachers and prophets are a dime a dozen.  True wisdom comes from within.The prophet\'s teaching on love is  particularly relevant to me at this stage of my life:&quot;For even as  love crowns you so shall he crucify you. Even as he is for your growth so  is he for your pruning. Even as he ascends to your height and caresses your  tenderest branches that quiver in the sun, So shall he descend to your  roots and shake them in their clinging to the earth. Like sheaves of corn  he gathers you unto himself. He threshes you to make you naked. He sifts  you to free you from your husks. He grinds you to whiteness. He kneads you  until you are pliant; And then he assigns you to his sacred fire, that you  may become sacred bread for God\'s sacred feast.&quot;Look into these  books. They may appear simplistic to the jaundiced eye, but they may also  provide the inspiration you need to see you through life\'s travails.', 5, 'Simple Wisdom'),
(8, 'AWLFVCT9128JV', '000100039X', 'Dave_42 \"Dave_42\"', 'Gibran Khalil Gibran was born in 1883 in what is now Northern Lebanon.  In 1909 he went to Paris to study, but he did not like the strict education, and so he traveled, eventually moving to New York.  Gibran became both an artist and a writer, and in 1923 he published \"The Prophet\", which is generally considered to be his greatest work.  He died of cancer in a New York hospital at the very young age of 48.The Prophet is a story about Almustafa (The Prophet) who after living 12 years in Orphalese is about to depart aboard ship to return to his home.  Before he goes, a group of people stop him, and to them he teaches the secrets of life.  Gibran writes in a very poetic manner, and it is wonderful to read.', 5, 'The Lessons Of Life'),
(9, 'A1MCAHDE1F3Q6L', '000100039X', 'Davis Aujourd\'hui', 'As the author of a spiritually-themed book entitled \"The Misadventures of Sister Mary Olga Fortitude,\" I appreciate any book that opens the doors to spiritual understanding. There are few contemporary books that will do this for you in such a poetic way.This is a book containing eternal truths. It was given to me as a high school graduation present many years ago. At the time, I found it beautiful, but I couldn\'t understand it. That is because I hadn\'t experienced life.Selections from this book were read at my wedding. The sections on love speak of what it is truly about. Most of us never have an inkling of what true love is since we are caught up in a world of attachment to illusions and delusions. This book will help you to break through them.This is a classic that will stand the mark of time such as the Bible has done. Kahlil Gibran is an old soul who speaks in a language that can be embraced by people of any faith.The book is filled with metaphors and parables. It is almost as if Jesus himself is speaking through the author. Whether or not you will be able to comprehend what the author is speaking about, The Prophet will plant seeds that can bear good fruit.Davis Aujourd\'hui, author of \"The Misadventures of Sister Mary Olga Fortitude\"', 5, 'Eternal Truths'),
(10, 'A2NHD7LUXVGTD3', '000100039X', 'doc peterson', '_The Prophet_ is a short read (my copy checks in at just under 100 pages), but its berevity belies both the power and beauty of Gibran\'s words.  At its simplest, it is a discourse on the human condition: love, work, joy and sorrow, crime and punishment, reason and passion, Gibran runs the gamut of emotion and being, laying bare the paradox of who we are as human beings.  While the tone is somewhat mystical (which I didn\'t really care for), the sheer poetic beauty of his writing moved me.For example, in the chapter \"Love\", Gibran writes, \"... When love beckons to you, follow him, / Though his ways are hard and steep, / And when his wings enfold you yield to him, / Though the sword hidden among his pinions may wound you. / And when he speaks to you believe in him, / ... For even as love crowns you so shall he crucify you.  Even as he is for you growth so is he for your pruning. ...\"  The contrast, vivid metaphor and beautiful images were stunning and left me with much to think and reflect on about my own life, and the choices I\'ve made.  It would be going too far to say that, as a result of reading \"The Prophet\" I\'ve had an epiphany or (to take it to a ridiculous conclusion) some sort of a conversion.  Rather it has caused me to consider on a philosophical level what it is to be human means to me, and how I have demonstrated my \"human-ness\" in my life.Part poetry, part philosophy, it is simultaneously thought-provoking and emotional.  Undeniably readers will have a visceral reaction (although, apparently given the reviews of some, not all reactions are positive.)  Highly recommended, if only to cause one to examine their own life.  After all, \"the unexamined life is not worth living.\"', 5, 'a beautiful poetic commentary on what it is to be human'),
(11, 'A1K1JW1C5CUSUZ', '000100039X', 'Donald Mitchell \"Jesus Loves You!\"', 'The Prophet is about a mysterious religious thinker who is about to leave for his native land.  Before he goes, many people have just one question to ask him.  In a very few words, he tells them his accumulated wisdom primarily in a nondenominational way.  The only exceptions come in the references to rebirth.  The essence of each brief lesson is that we have to step outside of our own perspective to see things in the way that God does and wants us to.Let me give you an example.  When someone transgresses either man\'s laws or God\'s laws, we tend to condemn the person harshly and focus on punishment.  This is like treating the person as though they have fallen below some level of what it is still to be human.  Yet no one does anything worse than what some person has done wrong before and will do wrong again.Surely, our reaction should still focus, like a Mother\'s, on the fundamental humanness of the person and our desire to have the person be a contributing, loving, and helpful part of our community.Another way to think about the lessons of The Prophet is to notice that nature loves a balance.  If we interfere with nature, nature overreacts in some new way that counters our interference.  This happens when we put too much phosphate into lakes.  Algae blooms expand exponentially to eat the phosphate.  These lessons help us to see the balance that is missing in our initial reaction.A good parallel can be found in the study of the brain.  Our initial reactions when frightened or threatened are focused in the oldest parts of the brain.  This part of the brain triggers strong chemicals to be released that engage us in &quot;fight or flight&quot; reactions that can save our lives in the near-term.  In the &quot;civilized&quot; world, we often have these reactions just to stress.  Gibran is helping us move to our highest level of consciousness by choosing our reactions, and selecting reactions that integrate all parts of our brains plus our near- and long-term best interests as individuals and as a community.Many Eastern religions encourage one to become free of the conscious mind, and that sense of objectivity is captured nicely here.  I have a feeling much like when meditating while I read The Prophet, because of its calming influence on my overreactive senses.I also think of this perspective like being on the Moon and observing the circumstances on Earth through a telescope.  With such extreme distance should come detachment from the ego, to permit good thinking.But none of these perspectives are directly suggested or alluded to.  The moral lessons are simply there, with the briefest possible examples to make them clear.  As such, they are masterpieces of good thinking, moral ethics, and fine communication.The answers are so brief and so profound that you will want to discuss them.  I suggest you select another member of your family, or a group of people from your house of worship.  The lessons are best explored by discussing tangible situations that you face every day.  Certainly, it is desirable and appropriate to consider the direct teachings of your religious heritage and beliefs in this connection.Whenever you feel overwhelmed, turn to the page in The Prophet that addresses your issue.  Like taking a warm bath, you will be soothed by the love for humanity in the answers Gibran provides.Before you speak, ask yourself who is about to speak for you and what do they want.', 5, 'Transcend Human Subjectivity to Find Godlike Objectivity'),
(12, 'A38AAPXSJN4C5G', '000100039X', 'Edward J. Barton', 'Echoing the reviews of others - it is obvious that Gibran both was inspired by and inspired many of the great writers of all ages.  From Buddha to Coehlo, and countless others in between, there is a depth of truth and a veil of simplicity that, once lifted, opens the mind, heart and soul to universal wisdom.It is not hard to understand why Gibran was as popular in his day, and in the 1960\'s, as he was.  Covering the landscape from religion to love, Gibran bubbles up deep truths in the form of a farewell speech from the Prophet to the people of his city before he sets sail on a final journey.  The metaphors are numerous and the scale of depth is exceptional.The book itself is nearly 100 pages, but the content is not readable at any level rapidly.  This book is one that bears constant revival and renewal.  It\'s a well that provides the reader with sweet water of wisdom which merits frequent draws to slake the thirst.A must have and a must read.', 5, 'Inspired and Inspiring'),
(13, 'A11TYILTAFKPR3', '000100039X', 'Erin Clark', 'When Gibran was first introduced to me, I had definite doubts that his work would be the ordinary, grab a dictionary sort of read. But when you first open to those sections that apply to you, and listen to the words as they roll off of your tongue and dance in your ears, well, shock is the only word for it. Yes, the ideals and beliefs that he expresses in \'The Prophet\' may not be anything new as far as philosophy is concerned, but the perfect blend of brilliant poetry and this simple philosophy come together to make something that is indeed, unique. I\'ve purchased countless copies to the ones that I know will love and understand his words. And if for nothing else, Kahlil\'s work can be labeled as truly, a literary work of art.', 5, 'A beautiful work'),
(14, 'AAEP8YFERQ8FC', '000100039X', 'General Breadbasket', 'The Prophet, for me, is a very vivid yet dense book. It speaks some sort of wisdom, and I delight in that wisdom when I can understand it.The illustrations are done by the author himself, which is nice.', 5, 'Speak to Us of the Prophet'),
(15, 'A2E71VWXO59342', '000100039X', 'Jasleen Matharu', 'The Prophet dispenses ultimate wisdom to his loved ones as he bids fare well.Khalil Gibran defines all that I never had words to define, or more appropriately, did not have the good sense to define.  I discovered this book a while back and took a long time to read it since I refused to rush through it.  I read it a lesson at a time, understanding it to the best of my ability.I found a way of life in these words.  I could read it everyday and each time these words would dispense a new lesson... like a never ending treasure.', 5, 'Discourses'),
(16, 'A329BKRM2USZ8T', '000100039X', 'Jay', 'Truly a classic of world literature, Gibran has snatched a chunk of wisdom from the ether--from and for the ages--and fashioned it into a masterwork.', 5, 'A treasure'),
(17, 'ABFOAYZA2UHD3', '000100039X', 'J. Malnar', 'This book was recommended to me by a friend. What he told me of it is that, just as The Art of War, this is the book from which you take out whatever you want. What you find in it depends as much on the book as it does on you. It speaks of love, life and people in the most touching way ever. I have it in my handbag at all times. When I first read it, I cried. There is literally something mystical about it. I like to think I took a lot out of it. One of those books you should read again and again and again..', 5, 'I cried reading this book'),
(18, 'A2X6GEC6LCDN4S', '000100039X', 'J. McAndrew \"Jeffrey C. McAndrew\"', 'This is a book you can read and re-read many many times.Great and timeless thoughts about relationships, love andfriendship.  I will share this with my family. :)Jeffrey C. McAndrewauthor of &quot;Our Brown Eyed Boy&quot;', 5, 'Absolutely Wonderful!!'),
(19, 'A7GT0WQKKDP0V', '000100039X', 'Julie Jordan Scott \"Writer, Life Coach - Owne...', 'Reading a classic such as &quot;The Prophet&quot; is much more fruitful when it is revisited often, the lessons are applied and the reader reads as if Gibran is writing only to him or her.Sitting with this book in your hands can be like sitting across from Gibran, listening to him speak.  The accompanying art work also by Gibran gives it yet another rich element and peek into the soul of this incredible writer.Listen, embrace and breathe in these words.Open your mind and heart to The Prophet.', 5, 'To Be Experienced as Well as Read'),
(20, 'ATAPOART4QGVO', '000100039X', 'Kate', 'Maybe I just wasn\'t in the right mood for a heavily poetic book on one man\'s life philosophies, but this book lost me after the chapter on children. Some sections are insightful and very well written. On death, children, and love were my favorites. I\'m not sure how novel these ideas were back in 1928 (?) when the book was first published, but they are nothing new today. Still, the flowery language is pretty, it\'s not overly long, and also it\'s probably one of those books that make you look cool when your reading it at a coffee shop.... so it\'s not all bad.This book was given to me by my dad who grew up in the 60\'s and 70\'s. It occurs to me that The Prophet seems to speak best to those from this generation (peace, love, and all that crap... you know). Maybe it\'s just not relevant to me? Maybe I need to approach it at a different time? Maybe I need to smoke something herbal?', 3, 'Now I\'m Sleepy'),
(21, 'AGKPTMTR3UX1R', '000100039X', 'Konrei \"Everything I need is right here\"', 'Kahlil Gibran (1883-1931), the Lebanese-American poet and mystic never wrote anything finer than this 1923 volume, his masterwork. Had he written nothing before or beyond THE PROPHET, he would still be remembered into perpetuity.Each brief chapter of THE PROPHET addresses an aspect of the human condition, including Love, Marriage, Work, Pleasure, Buying and Selling, Children, Eating and Drinking, to name but a few. Gibran espouses no particular religious, ethical or moral system, and yet includes them all in this slim tome, written it seems, with a quill of light, not ink.A Higher Power (by whatever name you may call it) spoke through Gibran in the writing, a perfect letter to the ages, and an ultimate expression of Humanity.', 5, '\"People of Orphalese...\"'),
(22, 'A1P5UBFPQ48OWN', '000100039X', 'McGuffy Ann', 'I first read this book as a teenager. It has remained on my bookshelf, being read many, many times. I have given it as a gift to several people, over the years. It is one of my favourite books.The Prophet is a classic, and is considered to be Kahlil Gibran\'s masterpiece. Gibran himself considered it his \"greatest achievement\". Originally published in 1923, it has been translated into 28 languages, and is still a popular piece of literature today.The book is a beautiful blend of poetry and philosophy. Each chapter takes on a particular topic, or aspect of life. \"The Prophet\" speaks on love, work, law, freedom, pain, time, and many other important issues we all deal with as we journey through life. Each beautifully written chapter is also illustrated by Gibran.The importance and beauty of this book is immeasurable and timeless. This book should be on every bookshelf of those who truly enjoy the beauty of poetry and classic literature, to be enjoyed and appreciated by every generation. The life lessons offered by Kahlil Gibran are timeless in essence and belief.', 5, 'Profound'),
(23, 'AJ2CPKQKCR1TD', '000100039X', 'mysteryreader', 'This is classic reading, which I did read when it was &#34;young&#34;.I was glad to find it available for Kindle.', 5, 'The Prophet'),
(24, 'ANTGGAQYPSWHF', '000100039X', 'owookiee \"owookiee\"', 'I originally read this early in college and didn\'t think it was anything special then.  I saw it recently in a used bookstore for two bucks, so I bought it.It took about an hour to read.There were about a dozen short passages I underlined.  Most of them weren\'t really revelations, but rather really good analogies I liked or uniquely descriptive ways of presenting commonly known truths.', 3, 'Not sure you\'ll get much from it'),
(25, 'AR72Z89LACZ8Q', '000100039X', 'rannoon', 'An unusual departure of an imaginary prophet ... Saying goodbye, his people gather around him asking about human nature and life!!The dialogue takes the form of questions and answers...which makes it a little monotonous...but the poetic language and the symbolic style of explanation takes your mind away and makes you wonder impatiently what the next question will be!!An inspiring revelation of truths ...\"Love one another, but make not a bond of love...Even as the strings of a lute are alone though they quiver with the same music\"', 3, 'Inspirational...'),
(26, 'AJRFZ0VZ0LD26', '000100039X', 'Reader \"Eugenia\"', 'I recently read an article in The New Yorker Magazine about Kahlil Gibran, writer born in the middle east to Christian parents. Kahlil Gibran managed to immigrate to NYC with his mother and siblings.  Gibran\'s personal life and his early death, his exotic looks and ability to both write and paint is what attracted me to read his masterpiece \"The Prophet\".  It is a mystic story, written in verse, less than 100 ages long with a dozen fantastic paintings that remind of magical realism in painting.  The book is a manifest on how to live, love, work, dress, embrace joy and sorrow, accept righteousness and mankind far from perfection.  It is a book of duality that in the most beautiful language a young philosopher teaches the ways to live life.  No matter what world, culture, continent or country one comes from,this verse is universal.  If anything, this piece of work has compelled me to seek out other of Gibran\'s work.  I need to get into a mind of this wonderful thinker who himself led a very complicated and solitary life.  It has been a long time since I read anything as beautiful and touching as this piece of literature.', 5, 'Mystic masterpiece'),
(27, 'A281NPSIMI1C2R', '000100039X', 'Rebecca of Amazon \"The Rebecca Review\"', 'I am alive like you, and I am standing beside you.Close your eyes and look around, you will see me in front of you.~Gibran\'s words on his EpitaphThe Prophet captures the teachings of Kahlil Gibran in a comforting story that succinctly touches on everyday topics like love, giving, joy, sorrow, freedom, pain, teaching, friendship and beauty. Within each tiny chapter, profound moments can occur as we are given insight into unfamiliar territory, a place of thought not commonly existing in daily life but familiar to spiritual teachers.Kahlil Gibran magically explores the connection between sorrow and joy and how the deeper the sorrow you experience, the more joy you can contain. Talking becomes thoughts that can no longer \"dwell in the solitude of your heart\" so they \"live in your lips.\"As Almustafa waits for a ship to take him back to the isle of his birth, he climbs a hill outside the city walls and looks out to sea. When his \"ship arrives\" he is suddenly filled with regret, yet knows he must follow his destiny and return home.\"Long were the days of pain I have spent within its walls, and long were the nights of aloneness; and who can depart from his pain and his aloneness without regret?\"The priests and priestesses ask him to remain in very poetic ways: \"Let not the waves of the sea separate us now, and the years you have spent in our midst become a memory.\"Almustafa only cries and doesn\'t seem to speak until a woman named Almitra appears. She is a woman who believed in him and he seems to have great fondness for her. We are not given any insight into their relationship, but his respect for her is unquestioned. She understands he must leave, but asks him to give the city his wisdom. She promises they will pass this wisdom down through the generations.While viewing pictures of Bsharri in Northern Lebanon, the mountains and the mist are almost a unique doorway into Kahlil Gibran\'s mind. He lived in a lush region where cascading falls, rugged cliffs and cedar trees influenced his art and writing.We can imagine his thoughts of home and this book was actually first imagined when he wrote a short story as a teenager. A Bostonian poet, Josephine Peabody, caught Gibran\'s attention at an art exhibition and she later referred to him as \"her young prophet.\"  She also wrote poems about Gibran\'s life and how she imagined his life in Bsharri. His life is woven into his writing in the most beautiful ways. He names his book for a woman he loves and his writing is infused with spiritual teachings and influences from his journey from Lebanon to New York.The story has an unassuming plot, but the lessons are eternal and the ending is surprisingly tender. I was left with a sense of longing that is still drifting along with me like the mists of Bsharri. The Prophet is not just a book to read, it is a spiritual journey to experience. It may take three or more days to complete the reading of this tiny book. I could only read about a third at a time because it is saturated in wisdom and many of the chapters want to be read and read again, until they are absorbed into your soul and written on your heart.\"But if you love and must needs have desires,let these be your desires:To melt and be like a running brook thatsings its melody to the night.\" ~Kahlil Gibran~The Rebecca Review', 5, 'The Invisible Revealed'),
(28, 'A2Q41ZN25XIU8Q', '000100039X', 'Reema E.', 'When i ordered this book i knew it was worth it. The Prophet teaches us about life with its pains, sorrows, joy and love and much more. This book deserves more than five stars, i highly recommend it.', 5, 'WHAT CAN I SAY');

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `admin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin`) VALUES
('2TNX4700WI4C47G', 'LemonIsHere', 'test', 'admin'),
('A100NGGXRQF0AQ', 'test1053', 'test1053', NULL),
('A101OMG474Q26I', 'test1635', 'test1635', NULL),
('A107C4RVRF0OP', 'test1664', 'test1664', NULL),
('A107DC2GDTLXOJ', 'test2086', 'test2086', NULL),
('A10ARPP5YIQNKY', 'test1405', 'test1405', NULL),
('A10B4UOL0IB274', 'test148', 'test148', NULL),
('A10K3DLOEVMKW3', 'test484', 'test484', NULL),
('A10LWBOIZCF2QT', 'test1938', 'test1938', NULL),
('A10QNZ3BC9LGTZ', 'test1351', 'test1351', NULL),
('A10T0OW97SFBB', 'test206', 'test206', NULL),
('A10TR7FH7DXFA2', 'test1387', 'test1387', NULL),
('A10URBQ3W2KW65', 'test1150', 'test1150', NULL),
('A10W0GPVSGN8PL', 'test1588', 'test1588', NULL),
('A10WE4JQOHF6H2', 'test1629', 'test1629', NULL),
('A10X7BK2JZTHD', 'test1339', 'test1339', NULL),
('A10XZH78SDOI5M', 'test1388', 'test1388', NULL),
('A10YWQ4AAAE29O', 'test1819', 'test1819', NULL),
('A110LZFBUFYWN7', 'test622', 'test622', NULL),
('A1129LM24YWSZV', 'test1778', 'test1778', NULL),
('A115US2YWWZH87', 'test434', 'test434', NULL);

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
CREATE TABLE IF NOT EXISTS `user_orders` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`id`, `user_id`, `order_id`, `total`) VALUES
(1, 'O4F3W3OS7BFK6G9', 'AHXL1V6N74', 7.99),
(2, '2TNX4700WI4C47G', 'KVC2IUTNF8', 8.79),
(3, 'O4F3W3OS7BFK6G9', 'EVWLF2TL52', 9.99),
(4, 'O4F3W3OS7BFK6G9', '8DCXSPY7QO', 8.52),
(5, 'O4F3W3OS7BFK6G9', 'JVN5HOEH9J', 28.17),
(6, 'O4F3W3OS7BFK6G9', 'J04611QAVG', 12.1),
(7, 'O4F3W3OS7BFK6G9', 'HPRXRDX1IN', 10.7),
(8, 'O4F3W3OS7BFK6G9', 'WPR1956HFK', 5.99);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


