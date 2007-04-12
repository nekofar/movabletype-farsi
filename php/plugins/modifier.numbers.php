<?php 
function smarty_modifier_numbers($text, $attr = null) { 
        if ($attr == 'farsi'){ 
                $a = array(1,2,3,4,5,6,7,8,9,0); 
                $b = array("۱","۲","۳","۴","۵","۶","۷","۸","۹","۰"); 
                $text = str_replace($a,$b,$text); 
                return $text; 
        } 
        else { 
                return $text; 
        } 
} 
?>
