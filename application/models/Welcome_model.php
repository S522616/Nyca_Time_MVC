<?php

/**
 * Created by PhpStorm.
 * User: Saketha
 * Date: 1/5/2017
 * Time: 12:09 PM
 */
class Welcome_model extends CI_Model
{
public  function connection()
{
   /* $data = array('personId'=>'15','firstName'=>'saketh','lastName'=>'Ramanavarapu','email'=>'saketh.ramanavarapu@gmail.com','phone'=>'5732895729','userName'=>'saketh','passwd'=>'krishna','createdBy'=>'surya','createdAt'=>'','updatedBy'=>'','updatedAt'=>'');
    $this->db->insert('Discussions',$data);*/

   $data = array('name'=>'sudheer','age'=>'44');
    $this->db->insert('info',$data);



}
}