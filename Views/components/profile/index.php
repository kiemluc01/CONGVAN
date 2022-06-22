<?php 

$profile = loadModel('Profile');
if(!isset($_COOKIE['user'])){
    echo  '<script>
        alert("bạn phải đăng nhập trước")
        location.href ="index.php"
    </script>';}
if(isset($_REQUEST['luu'])){
    $name =  $_COOKIE['user'];
    $hoten =  $_REQUEST['hoten'];
    $gt =  $_REQUEST['gt'];
    $ns =  $_REQUEST['ns'];
    $email =  $_REQUEST['email'];
    $sdt =  $_REQUEST['sdt'];
    if($profile->update($name,$hoten,$gt,$ns,$email,$sdt)){
        echo '<script>alert("lưu thành công")
        </script>';
    }
}

$result = $profile->get($_COOKIE['user']);
if(mysqli_num_rows($result)>0){
    while($row = mysqli_fetch_assoc($result)){
        ?>
        
<div class="container-xxl flex-grow-1 container-p-y" style="width:98%!important;">
    <div class="row">
        <div class="col-xl">
            <div class="card mb-4">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Cập nhật cá nhân</h5>
                </div>
                <div class="card-body">
                    <form  action="" method="post">
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-company">Mã</label>
                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-company2" class="input-group-text"
                                ><i class="bx bx-buildings"></i
                            ></span>
                            <input
                                type="text"
                                id="basic-icon-default-company"
                                class="form-control"
                                name="manv"
                                value="<?php  echo  $row['id']; ?>"
                                placeholder="ACME Inc."
                                aria-label="ACME Inc."
                                aria-describedby="basic-icon-default-company2"
                                disabled
                            />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-fullname">Họ tên</label>
                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-fullname2" class="input-group-text"
                                ><i class="bx bx-user"></i
                            ></span>
                            <input
                                type="text"
                                class="form-control"
                                id="basic-icon-default-fullname"
                                name="hoten"
                                value="<?php  echo  $row['hoten']; ?>"
                                placeholder="John Doe"
                                aria-label="John Doe"
                                aria-describedby="basic-icon-default-fullname2"
                            />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-company">Giới tính</label>
                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-company2" class="input-group-text"
                                ><i class="bx bx-buildings"></i
                            ></span>
                            <input
                                type="text"
                                id="basic-icon-default-company"
                                name="gt"
                                value="<?php  echo  $row['gioitinh']; ?>"
                                class="form-control"
                                placeholder="ACME Inc."
                                aria-label="ACME Inc."
                                aria-describedby="basic-icon-default-company2"
                            />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-company">Ngày sinh</label>
                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-company2" class="input-group-text"
                                ><i class="bx bx-buildings"></i
                            ></span>
                            <input
                                type="text"
                                id="basic-icon-default-company"
                                name="ns"
                                value="<?php  echo  $row['ngaysinh']; ?>"
                                class="form-control"
                                placeholder="ACME Inc."
                                aria-label="ACME Inc."
                                aria-describedby="basic-icon-default-company2"
                            />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-email">Email</label>
                            <div class="input-group input-group-merge">
                            <span class="input-group-text"><i class="bx bx-envelope"></i></span>
                            <input
                                type="text"
                                id="basic-icon-default-email"
                                name="email"
                                value="<?php  echo  $row['email']; ?>"
                                class="form-control"
                                placeholder="john.doe"
                                aria-label="john.doe"
                                aria-describedby="basic-icon-default-email2"
                            />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="basic-icon-default-phone">SĐT</label>
                            <div class="input-group input-group-merge">
                            <span id="basic-icon-default-phone2" class="input-group-text"
                                ><i class="bx bx-phone"></i
                            ></span>
                            <input
                                type="text"
                                id="basic-icon-default-phone"
                                name="sdt"
                                value="<?php  echo  $row['sdt']; ?>"
                                class="form-control phone-mask"
                                placeholder="658 799 8941"
                                aria-label="658 799 8941"
                                aria-describedby="basic-icon-default-phone2"
                            />
                            </div>
                        </div>
                        
                        <input type="submit" value="Lưu thông tin" name="luu" class="btn  btn-primary">
                        <a href=".?option=vanthu" class="btn btn-danger">Hủy bỏ</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
    }
}
?>