<?php
$dbHost = getenv('DB_HOST') ?: 'l2mariadb';
$dbName = getenv('DB_NAME') ?: 'acis';
$dbUser = getenv('DB_USER') ?: 'root';
$dbPass = getenv('DB_PASS') ?: 'password';

$mysqli = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);
if (!$mysqli) {
    die('Erro ao conectar ao banco de dados.');
}

$serverName = 'L2 Korentech';
$serverIp = getenv('SERVER_IP') ?: '2.24.108.110';
$loginPort = getenv('LOGIN_PORT') ?: 2106;
$gamePort = getenv('GAME_PORT') ?: 7777;

function isServerOnline($host, $port) {
    $conn = @fsockopen($host, $port, $errno, $errstr, 1.5);
    if ($conn) {
        fclose($conn);
        return true;
    }
    return false;
}

function h($value) {
    return htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
}

function getOnlinePlayerCount($mysqli) {
    $result = @mysqli_query($mysqli, "SELECT COUNT(*) AS total FROM characters WHERE online = 1");
    if (!$result) {
        return 0;
    }
    $row = mysqli_fetch_assoc($result);
    return (int) ($row['total'] ?? 0);
}
