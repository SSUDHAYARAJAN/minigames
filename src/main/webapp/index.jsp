<!DOCTYPE html>
<html>
 <head>
     <title> Login Page</title>

 <style>
   #whole{
       background-color:aqua;
   }
     html{
         background-color:rgb(103, 13, 162);
     }
      body{
          border: 1px solid grey;
          padding: 10px;
          background-color: white;
          border-radius: 10px;
      }
      body{
          left: 50%;
          top: 50%;
          margin-left: -10%;
          position: absolute;
          margin-top: -10%;
      }
      h2{
          padding-left: 60px;
      }
      button{
          background-color: rgb(231, 9, 9);
          background-image: linear-gradient( red,blue);
          width: 170px;
          color: aliceblue;
      }
      .abc{
          padding-left:10%;
          text-align:center;
      }
      .my-form{
          padding: 20px;
      }
      .myform{
          padding-bottom: 20px;
      }
      .my-form label{
          display: block;
      }
      input{
          width: 85%;
      }
      marquee{
          height: 20px;
          width: 45px;
          color: blue;

      }

 </style>
 </head>
    <body>
    <div id="whole">
    <div class="myform">
        <h2>Sign In</h2>
        <form action="checklogin" method="post">
                 <label>Username</label>
                 <input type = "text" name="username" required>
             </div>
             <div class="myform">
                 <label>Password</label>
                 <input type = "password" name="password" required>
             </div>
             <input  type="submit" value="Login"><br>
             <a class = " abc" href="#"><label>Forgot password? </label></a> <br><br>
             Create an account? <a href="SignUP.jsp"> SIGN UP </a>
          </div>
     </form>
    </body>
</html>