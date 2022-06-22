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
    function getName(){
        $sql = "select * from users where name = '".$_COOKIE['user']."'";
        $name = "Lỗi tề";
        $result = mysqli_query($this->conn,$sql);
        if(mysqli_num_rows($result)>0){
            while($row = mysqli_fetch_assoc($result)){
                $name = $row['hoten'];
            }
        }
        return $name;
    }
    function getEmail(){
        $sql = "select * from users where name = '".$_COOKIE['user']."'";
        $name = "Lỗi tề";
        $result = mysqli_query($this->conn,$sql);
        if(mysqli_num_rows($result)>0){
            while($row = mysqli_fetch_assoc($result)){
                $name = $row['email'];
            }
        }
        return $name;
    }
}