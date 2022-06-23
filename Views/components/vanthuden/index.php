<?php
    if(!isset($_COOKIE['user'])){
        echo  '<script>
            alert("bạn phải đăng nhập trước")
            location.href ="index.php"
        </script>';
    }
    $donvi  = loadModel('Donvi');
    $vanban = loadModel('Vanban');
    if(isset($_REQUEST['submit'])){
        $f_path  = "Public/files/".$_FILES['fileupload']['name'];
        $f =$_FILES['fileupload']['tmp_name'];
        $nv  = $_REQUEST['nv'];
        $dvhc  = $_REQUEST['dvhc'];
        $nn  = $_REQUEST['ngaynhan'];
        $lvb  = $_REQUEST['lvb'];
        $sh  = $_REQUEST['sh'];
        $vbd = loadModel('Vanbanden');
        if(move_uploaded_file($f,$f_path))
            if($vbd->insert($f_path,$sh,$nn,$nv,$lvb,$dvhc)){
                echo '<script>alert("lưu thành công\n file được lưu trong Public/files")</script>';
            }
    }
?>
<div class="container-xxl flex-grow-1 container-p-y" style="width:98%!important;">
    <div class="row">
        <div class="card">
            <h3 class="card-header">Tiếp nhận văn bản đến</h3>
        </div>
        <div class="card">
            <div class="card-body">
                <form action="" method="post" enctype="multipart/form-data">
                <div class="input-group">
                        <input
                            type="file"
                            class="form-control"
                            id="inputGroupFile04"
                            name="fileupload"
                            aria-describedby="inputGroupFileAddon04"
                            aria-label="Upload"
                        />
                    </div>
                    <div style="display:flex;  width:90%;justify-content: space-between;padding-top:10px;">
                        <div class="mb-3" style="width:45%!important;">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Nhân viên đăng kí</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" name="nv" id="basic-default-name" placeholder="" />
                            </div>
                        </div>
                        <div class="mb-3" style="width:45%!important;">
                            <label for="defaultSelect" class="form-label">Đơn vị hành  chính</label>
                            <select id="defaultSelect" name="dvhc" class="form-select">
                                <?php 
                                    $r_donvi = $donvi->get();
                                    if(mysqli_num_rows($r_donvi)>0){
                                        while($rowdv = mysqli_fetch_assoc($r_donvi)){
                                            ?>
                                            <option value="<?php echo $rowdv['maLoaiDV'] ?>"><?php echo $rowdv['tenLoaiDV'] ?></option>
                                            <?php
                                        }
                                    }
                                ?>
                                
                            </select>
                        </div>
                    </div>
                    <div style="display:flex;  width:90%;justify-content: space-between;padding-top:10px;">
                        <div class="mb-3" style="width:45%!important;">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Ngày nhận</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" name="ngaynhan" id="basic-default-name" placeholder="" />
                            </div>
                        </div>
                        <div class="mb-3" style="width:45%!important;">
                            <label for="defaultSelect" class="form-label">Loại văn bản</label>
                            <select id="defaultSelect" name="lvb" class="form-select">
                                <?php 
                                    $r_vanban = $vanban->get();
                                    if(mysqli_num_rows($r_donvi)>0){
                                        while($rowvb = mysqli_fetch_assoc($r_vanban)){
                                            ?>
                                            <option value="<?php echo $rowvb['maLoaiVB'] ?>"><?php echo $rowvb['tenLoaiVB'] ?></option>
                                            <?php
                                        }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div style="display:flex;  width:90%;justify-content: space-between;padding-top:10px;">
                        <div class="mb-3" style="width:45%!important;">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">số hiệu</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" name="sh" id="basic-default-name" placeholder="" />
                            </div>
                        </div>
                    </div>
                    <input type="submit" value="Đăng ký" name="submit"  class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function(){
        var home = document.getElementById('home')
        home.classList.remove('active')
        var vanthudi = document.getElementById('vanthudi')
        vanthudi.classList.remove('active')
        var vanthuden = document.getElementById('vanthuden')
        vanthuden.classList.add('active')
    })
</script>