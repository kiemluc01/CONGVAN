<?php
    if(!isset($_COOKIE['user'])){
        echo  '<script>
            alert("bạn phải đăng nhập trước")
            location.href ="index.php"
        </script>';
    }
?>
<div class="container-xxl flex-grow-1 container-p-y" style="width:98%!important;">
    <div class="row">
        <div class="card">
            <div class="container-header" style="display:flex;justify-content: space-between;">
                <div class="add" style="display:flex;">
                    <h3 class="card-header">Tiếp nhận văn bản đến</h3>
                </div>
            </div>
        </div>
    </div>
</div>