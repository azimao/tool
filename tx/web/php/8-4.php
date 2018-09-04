<?php

function str_rev($str=''){
        for($i=0;true;$i++){
                if(!isset($str[$i])){
                        break;
                }
        }
        
	$res = '';
	for($j=$i-1;$j>=0;$j--){
		$res .= $str[$j];
	}
	
	return $res;
}


echo str_rev('abcdefgA');
echo "\n";

