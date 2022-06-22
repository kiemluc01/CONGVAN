<?php 
    if(isset($_COOKIE['user'])){
        setcookie("user","",time()-60);
    }
    if(isset($_REQUEST['user']) && isset($_REQUEST['pw'])){
        $login = loadModel('login');
        if($login->login($_REQUEST['user'],$_REQUEST['pw'])){
            setcookie("user",$_REQUEST['user'],time()+600);
            echo '<script>
            alert("đăng nhập thành công")
            location.href = ".?option=vanthu"
            </script>';
        }else
            echo '<script>
            alert("sai tài khoản hoặc mật khẩu")
            </script>';
    }
?>
<div class="page-container">
    <div class="title" style="padding:50px!important;height:30vh!important;box-sizing: none!important;margin-bottom:20px!important;background: linear-gradient(70deg,rgb(80, 179, 255),rgba(79, 179, 255, 0.893),rgba(80, 179, 255, 0.696),rgba(80, 179, 255, 0.526),rgba(80, 179, 255, 0.778),rgba(80, 179, 255, 0.838))!important;">
        <h2>CHÀO MỪNG BẠN ĐÃ ĐẾN VỚI TRANG QUẢN LÍ CÔNG VĂN</h2>
        <h1>TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT</h1>
    </div>
    <div class="login">
        <form action="" method="post" class="login">
            <table>
                <tr>
                    <th colspan="2" style="margin-bottom:100px!important;">Đăng nhập</th>
                </tr>
                <tr>
                    <td>User: </td>
                    <td><input type="text" name="user" id="user" placeholder="tên đăng nhập"></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td>
                        <div class="pw">
                            <input type="password" name="pw" id="pw" placeholder="mật khẩu">
                            <img src="Public/images/show.png" id="hide_show" alt="">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="đăng nhập" name="login" id="login" class="btn btn-primary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function(){
        $('#hide_show').click(function(){
            if(document.getElementById('pw').type == 'password'){
                document.getElementById('pw').type ='text'
                document.getElementById('hide_show').src = String(document.getElementById('hide_show').src).replace('show','hide')
            }
                
            else{
                document.getElementById('pw').type ='password'
                document.getElementById('hide_show').src=String(document.getElementById('hide_show').src).replace('hide','show')
            }
                
        })
    })
</script>
<style>
    th,td{
        text-align:center!important;
        padding:5px!important;
    }
    th{
        font-size:50px!important;
        
    }
    div.pw{
        position: relative!important;
    }
    img#hide_show{
        width: 30px!important;
        height: 25px!important;
        position: absolute!important;
        top: 5px!important;
        left: 87%!important;
    }
    #user,#pw{
        line-height:25px!important;
        width:250px!important;
    }
    .page-container{
        text-align:center!important;
        height:100vh!important;
        
    }
    .login{
        margin-left:auto!important;
        margin-right:auto!important;
        width:50%!important;
        
    }
    .title{
        padding:50px!important;
        height:20vh!important;
        box-sizing: none!important;
        margin-bottom:20px!important;
        background: linear-gradient(70deg,rgb(80, 179, 255),rgba(79, 179, 255, 0.893),rgba(80, 179, 255, 0.696),rgba(80, 179, 255, 0.526),rgba(80, 179, 255, 0.778),rgba(80, 179, 255, 0.838))!important;
    }
    /* #login{
        height:30px!important;
        width:100px!important;
        line-height:30px!important;
    } */
    h1{
        font-size :50px!important;
        color:rgb(3, 71, 124)!important;
    }
    h2{
        font-size :40px!important;
        color:rgb(3, 71, 124)!important;
    }
</style>