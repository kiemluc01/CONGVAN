<?php
class  Vanbanden extends Database{
    function  insert($f_path,$sh,$nbh,$nv,$vb,$dv){
        $sql  = "INSERT INTO `van_ban_den` (`maVanBanDen`, `tenFileVanBan`, `soHieu`, `ngayBanHanh`, `nhanvien`, `maLoaiVB`, `maDonViGui`) VALUES (NULL, '".$f_path."', '".$sh."', '".$nbh."', '".$nv."', '".$vb."', '".$dv."');";
        if(mysqli_query($this->conn,$sql))
            return True;
        return False;
    }
}