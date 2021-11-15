<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','id17941035_root');
define('DB_PASS','tx!I|{3^7W>*VFv8');
define('DB_NAME','id17941035_srms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
