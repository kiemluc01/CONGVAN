<?php 
    if(isset($_REQUEST['user']) && isset($_REQUEST['pw'])){
        $login = loadModel('login');
        if($login->login($_REQUEST['user'],$_REQUEST['pw'])){
            echo '<script>
            location.href = ".?option=home"
            </script>';
        }
    }
?>
<div class="page-container">
    <div class="title">
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
                    <td><input type="text" name="pw" id="pw" placeholder="mật khẩu"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="đăng nhập" name="login" id="login">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<style>
    th,td{
        text-align:center;
        padding:5px;
    }
    th{
        font-size:50px;
        
    }
    #user,#pw{
        line-height:25px;
        width:250px;
    }
    .page-container{
        text-align:center;
        height:100vh;
        
    }
    .login{
        margin-left:auto;
        margin-right:auto;
        width:50%;
        
    }
    .title{
        padding:50px;
        height:20vh;
        margin-bottom:20px;
        background: linear-gradient(70deg,rgb(80, 179, 255),rgba(79, 179, 255, 0.893),rgba(80, 179, 255, 0.696),rgba(80, 179, 255, 0.526),rgba(80, 179, 255, 0.778),rgba(80, 179, 255, 0.838));
    }
    #login{
        height:30px;
        width:100px;
        line-height:30px;
    }
    h1{
        font-size :50px;
        color:rgb(3, 71, 124);
    }
    h2{
        font-size :40px;
        color:rgb(3, 71, 124);
    }
</style>