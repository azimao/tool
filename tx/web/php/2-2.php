<?php

$data = [a,b,c];

foreach($data as $key=>$val) {
	var_dump($data[$key]);
	$val = &$data[$key];
	var_dump($data);
}
