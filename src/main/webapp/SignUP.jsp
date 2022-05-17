<!DOCTYPE html>
<html>
 <head>
     <title> Sign Up Page</title>
 </head>
 <style>
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
      label{
          font-size: 30;
          font-weight:normal  ;
      }
      button{
          background-color: rgb(231, 9, 9);
          width: 160px;
          color: aliceblue;
      }
      .my-form{
          padding: 20px;
      }
      .myform{
          padding-bottom: 15px;
      }
      .my-form label{
          display: block;
      }
      input{
          width: 90%;
      }
 </style>




     <body>
     <h2>Sign In</h2>
     <form action="singup" method="post">
         <div class="myform">
             <label>UserName</label>
             <input type = "text" name="username" required>
         </div>
         <div class="myform">
            <label>Email</label>
            <input type = "email" name="mail" required>
        </div>
        <div class="myform">
            <label>Password</label>
            <input type = "password" name="password" required>
        </div>
        <div class="myform">
            <label>Confirm Password</label>
            <input type = "password" name="confirmedpassword" required><br><br>
        </div>
         <button type="submit">Sign Up</button><br><br>
         Already a user?<a href="index.jsp"> SIGN IN </a>
     </form>
     </body>
</html>