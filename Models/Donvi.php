<?php
class Donvi extends   Database{
    function get(){
        $sql = "select * from don_vi";
        return mysqli_query($this->conn,$sql);
    }
}