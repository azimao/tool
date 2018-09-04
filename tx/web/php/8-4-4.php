<?php

function array_mer(){
	$array = func_get_args();
	foreach($array as $arr){
		if(is_array($arr)){
			foreach($arr as $val){
				$res[] = $val;
			}
		}
	}
	return $res;
}

$a = [1,2,3=>[8,9]];
$b = [7,4];
var_dump(array_mer($a, $b));


