<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>nyca time</title>

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Nunito:400,300,700'>

    <link rel="stylesheet" href="/assets/css/styles.css">
    <!--<script>-->
    <!--    $(document).ready(function(){-->
    <!---->
    <!---->
    <!--        $("button").click(function(){-->
    <!--            $("form").submit();-->
    <!--        });-->
    <!--    });-->
    <!---->
    <!--</script>-->

</head>

<body>
<div class="container">
    <div>
        <form action='<?php echo base_url();?>index.php/Login_controller'>
            <input type="submit" value="Logout" class="logout">
        </form>
    </div>
    <div>  <h1 class="heading">NYCA TIME</h1></div>
    <div class="form-container">
        <div class="signup-form">

            <form class="SuperAdmin"  action="//////">
                <h3 class="title">Super Admin</h3>


                <div class="form-group">
                    <form action="signup.php">
                        <!--                        <input type="submit"  value="TEST User" class="login-button">-->
                    </form>
                </div>

                <div class="form-group">
                    <form action="signup.php">
                        <input type="submit"  value="Create User" class="login-button">
                    </form>
                </div>

                <div class="form-group">
                    <form action="EditViewUser.html">
                        <input type="submit"  value="Edit/View User" class="login-button">
                    </form>
                </div>

                <div class="form-group">
                    <form action="enrollment.php">
                        <input type="submit"  value="Assign Instructor" class="login-button">
                    </form>
                </div>

                <div class="form-group">
                    <form action="TimeSheet.html">
                        <input type="submit"  value="Time sheet" class="login-button">
                    </form>
                </div>
            </form>
        </div>
    </div>
</div>

<script src='https://code.jquery.com/jquery-2.1.4.min.js'></script>

<script src="js/index.js"></script>

</body>
</html>