<?php

$json = file_get_contents('php://input');
$arr = json_decode($json);
file_put_contents("receive_log.txt", '<?php $arr = ' . var_export($arr, true) . ';'.PHP_EOL, FILE_APPEND);

?>