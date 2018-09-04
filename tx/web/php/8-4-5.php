<?php
class Node
{
    public $data  = null;
    public $left  = null;
    public $right = null;
}

$A = new Node();
$B = clone $A;
$C = clone $A;
$D = clone $A;
$E = clone $A;
$F = clone $A;
$G = clone $A;
$H = clone $A;
$I = clone $A;


$A->data = 'A';
$B->data = 'B';
$C->data = 'C';
$D->data = 'D';
$E->data = 'E';
$F->data = 'F';
$G->data = 'G';
$H->data = 'H';
$I->data = 'I';


$A->left  = $B;
$A->right = $C;
$B->left  = $D;
$B->right = $E;
$E->left  = $G;
$E->right = $H;
$G->right = $I;
$C->right = $F;

/**
 * 前序遍历: 中左右
 * 中序遍历: 左中右
 * 后序遍历: 左右中
 */
function eatBtree($node)
{
    if ($node && $node->data) {
        eatBtree($node->left);
        eatBtree($node->right);
        echo $node->data;           //把这一行的位置换一换就能实现遍历方式的转变,放到最后是后序,放到最前是前序,放到中间是中序
    }
}

eatBtree($A);

/**
 * 层序遍历会用到队列
 */

function eatBtree2($node)
{
    $list[] = $node;
    while (count($list) > 0) {
        $cur = array_shift($list);
        if ($cur) {
            echo $cur->data;

            if ($cur->left) {
                $list[] = $cur->left;
            }

            if ($cur->right) {
                $list[] = $cur->right;
            }
        }
    }
}

eatBtree2($A);
