<?php
class Profile extends Database{
    function  get($user){
        $sql = "select * from users where name = '".$user."'";
        return mysqli_query($this->conn,$sql);
    }
    function update($name,$ht,$gt,$ns,$email,$sdt){
        $sql = "update users set hoten =N'".$ht."',ngaysinh ='".$ns."',gioitinh = N'".$gt."',email ='".$email."',sdt = '".$sdt."' where name = '".$name."'";
        if(mysqli_query($this->conn,$sql))
            return True;
        echo '<script>alert("có lỗi")</script>';
        return False;
    }
}