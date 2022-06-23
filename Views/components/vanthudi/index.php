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
        vanthudi.classList.add('active')
        var vanthuden = document.getElementById('vanthuden')
        vanthuden.classList.remove('active')
    })
</script>