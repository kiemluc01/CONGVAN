<?php
class Vanban  extends Database{
    function get(){
        $sql ="select * from loai_van_ban";
        return mysqli_query($this->conn,$sql);
    }
}