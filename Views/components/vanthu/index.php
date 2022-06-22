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
                    <h3 class="card-header">Trang chủ</h3>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="container-home">
                <img src="Public/images/home-image.jpg" style="height: 70vh;" alt="">
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function(){
        var home = document.getElementById('home')
        home.classList.add('active')
        var vanthudi = document.getElementById('vanthudi')
        vanthudi.classList.remove('active')
        var vanthuden = document.getElementById('vanthuden')
        vanthuden.classList.remove('active')
        
    })
</script>