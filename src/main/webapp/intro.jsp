

<%
String name=request.getParameter("username");
 response.getWriter().write("<h5 style='color:pink; font-size: 30px; font-family: sans-serif; text-align:center;'><i> Logged as "+name+"<i></h5>");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="intro.css">
    <title>Document</title>
</head>
<body>


    <p id="para"></p>
    <div class='header'>
        <h1>Mini games<h1>
      </div>

          <div class="games">
             <div class="box1">
                 <!--<p>Tic Tac Toe</p>-->
                 <form action="tictactoe.jsp" method="get">
                 <input type="text"  hidden style="height:0px; width:0px; color:black;" name="uname" value="<%=name%>">
                 <input type= "submit" value="tictactoe">
                 </form>
              </div>



          <div  class="box2">
              <!--<p>snake and ladder</p>-->
              <form action="snakegame.jsp" method="get">
                   <input type="text" hidden style="height:0px; width:0px; color:black;" name="uname" value="<%=name%>">
                    <input type="submit" value="SnakeGame">
               </form>

            </div>

          <div class="box3">
              <!--<p>Mathgame</p>-->
              <form action="numbergame.jsp" method="get">
              <input type="text"  hidden style="height:0px; width:0px; color:black;" name="uname" value="<%=name%>">
              <input type="submit" value="Mathgame">
              </form>


          </div>
          </div>

</body>
</html>




