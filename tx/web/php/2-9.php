<?php

$file = "./hello.txt";
$handle = fopen($file, 'r');

$content = fread($handle, filesize($file));

$content = "Hello world".$content;

fclose($handle);

$handle = fopen($file, 'w');
fwrite($handle, $content);
fclose($handle);

