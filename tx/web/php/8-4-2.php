<?php

function initcap($data){
	$data = explode('_', $data);

	
	$res='';
	foreach($data as $v){
		$res .= ucfirst($v);
	}
	return $res;
}

echo initcap('var_dump');
echo "\n";
