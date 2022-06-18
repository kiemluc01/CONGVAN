<?php
class Login extends Database{
    function login($user,$pass){
        $sql ="select * from users where name ='".$user."' and password = '".$pass."'";
        $row = mysqli_query($this->conn,$sql);
        if(mysqli_num_rows($row) > 0)
            return True;
        return FALSE;
    }
}