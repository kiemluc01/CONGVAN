<?php
class Donvi extends   Database{
    function get(){
        $sql = "select * from loai_don_vi";
        return mysqli_query($this->conn,$sql);
    }
}