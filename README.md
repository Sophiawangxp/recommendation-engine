# Recommendation Engine for PHP
This project is a simple recommendation engine designed for online book retail website powered by PHP. 

The recommendation algorithm is based on user rating using collabrative filtering technology. The recommendation engine can be easily modified and implemented to suit various purposes.

Check the demo for the full implementation version: 
[Amazing Book Store](http://sophiawang.ml/)


## Features
  - Build-in algorithms and functions
  - Provide both unpersonalize and personalize implementation
  - Easy to modify and implement
  - Integratble with other frameworks

## Technologies
* [PHP](http://www.php.net/) - Back-end scripting language
* [Phpmyadmin](https://www.phpmyadmin.net/) - Bringing Mysql to the web
* [WAMP](http://www.wampserver.com/en/) - Windows web development environment (for IOS and Linux, you can install XAMPP instead)

## How to implement
1. Clone the project in the local
2. Create a database on mysql and import db_schema.sql into the database
3. Open db.php, change the database configurations
4. Run the project using local web server

## Suggestion for modification
Database ERD is provided as db_erd.jpg for better understanding. To suit for different database, you are suggested to modify the db_schema.sql first, then modify recommendation.php accordingly. In index.php, it presents the ecommendation results, you should change the contents in the last.
