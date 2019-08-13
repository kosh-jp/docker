<?php

$dsn = 'pgsql:dbname=postgres host=db port=5432';
$user = 'postgres';
$password = '';

try{
    $db = new PDO($dsn, $user, $password);
    echo "db connect success\n";
} catch (PDOException $e) {
    print('Error:'.$e->getMessage());
    echo 'db connect fail';
    die();
}

echo phpinfo();