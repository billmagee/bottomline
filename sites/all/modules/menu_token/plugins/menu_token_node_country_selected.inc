<?php
class menu_token_node_country_selected implements menu_token_handler {
   function object_load($options) {
      selected country
     if (isset($_SESSION['selected_country_id'])) {
       return node_load($_SESSION['selected_country_id']);
     }
     return FALSE;
   }
 }