<?php
try {
									// 持久化
    $dbh = new PDO('mysql:host=localhost;dbname=test', $user, $pass, [PDO::ATTR_PERSISTENT => true]);
    foreach($dbh->query('SELECT * from FOO') as $row) {
        print_r($row);
    }
    $dbh = null;
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
