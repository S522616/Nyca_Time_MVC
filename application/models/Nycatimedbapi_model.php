<?php

/**
 * Created by PhpStorm.
 * User: Saketha
 * Date: 1/5/2017
 * Time: 12:09 PM
 */
class Nycatimedbapi_model extends CI_Model
{

    /* $data = array('personId'=>'15','firstName'=>'saketh','lastName'=>'Ramanavarapu','email'=>'saketh.ramanavarapu@gmail.com','phone'=>'5732895729','userName'=>'saketh','passwd'=>'krishna','createdBy'=>'surya','createdAt'=>'','updatedBy'=>'','updatedAt'=>'');
     $this->db->insert('Discussions',$data);*/

    //$data = array('name'=>'sudheer','age'=>'44');
    //$this->db->insert('info',$data);
    //private $roleID= "";



    function dbGetUser($usr, $pwd)
    {
        $sql = "select personId from Persons where userName = '" . $usr . "' and passwd = '" . $pwd . "'";
        $query = $this->db->query($sql);
        $result = $query->num_rows();
        if ($result == 1)
        {
          return true;
        }
        else
        {
          return false;
        }

    }
    function dbGetRName($usr, $pwd)
    {
        $sql = "select personId from Persons where userName = '" . $usr . "' and passwd = '" . $pwd . "'";
        $query_pid = $this->db->query($sql);
        $pid = $query_pid->row();
        $Id = $pid->personId;
        /*if (isset($pid))
        {
            return $Id;

        }*/
        $sql1 ="select roleId from PersonsAcl where personId = '" . $Id . "'  ";
        $query_rid = $this->db->query($sql1);
        $rid = $query_rid->row();
        $rlid = $rid->roleId;
        /*if (isset($rid))
        {
            return $rlid;

        }*/
        $sql2 ="select roleName from AclRoles where roleId = '" . $rlid . "'  ";
        $query_rname = $this->db->query($sql2);
        $rnme = $query_rname->row();
        $rname = $rnme->roleName;
        if (isset($rnme))
        {
            return $rname;

        }



    }



}

?>
