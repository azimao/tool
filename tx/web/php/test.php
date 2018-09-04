<?php
class Person{
	public $name = 'azimao';
}
$p1 = new Person;
xdebug_debug_zval('p1');

$p2 = $p1;
xdebug_debug_zval('p1');

$p2->name = 'tc';
xdebug_debug_zval('p1');
var_dump($p1->name);

?>
