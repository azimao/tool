<?php

$dir = './test';

function loopDir($dir){
	$handle = opendir($dir);

	while(($file = readdir($handle)) !== false) {
		if($file != '.' && $file != '..') {
			echo $file."\n";
			if(filetype($dir. '/'. $file) == 'dir') {
				loopDir($dir.'/'.$file);
			}
			
		}
	}

}
loopDir($dir);
