
<html lang="en">
<head>

  <link rel="stylesheet" href="numbergamecss.css">
</head>

<body>
   <%@ page import="java.sql.*,java.util.*" %>
       <%! %>
       <%
           response.getWriter().write("<h5 style='color:pink; font-size: 30px; font-family: sans-serif; text-align:center;'><i> Logged as "+request.getParameter("uname")+"<i></h5>");

       %>

    <section>
            <div class='start-container slide-container'>
              <button id="start">START</button>
              <div id="timer-slide" class='timer slide-cover slid-up'>
                <p id="timer-label" class='label'>Timer</p>
                <p id="timer" class='main'></p>
              </div>
           </div>

           <div class='problem'>
             <p class='label'>PROBLEM</p>
             <p id="question" class='main'></p>
           </div>
           <div class='lights'>
             <div id='green-light' class='light'></div>
             <div id='red-light' class='light'></div>
           </div>
           <div class='score-container'>
             <p class='label'>SCORE</p>
             <p id="score" name="pscore" class='main'></p>

            <form action="getmathscore" method="post">
            <input type"text"  value=pscore.value name="Mscore"></input>
            <input type="submit" value="back">
            </form>

            <!--<form action="savemathscore">
            <input type="number" hidden name="Mscore" id="score">
            <input type="submit" >-->

           </div>
             <div class="questioncount">
               <p>Questions Attended</p>
               <p id="qc"></p>
             </div>
           </section>


           <p class='label'>(To Answer Use the Numbers on Keyboard)</p>

            <script src="numbergamejs.js"></script>

<%
    int finalscore=%>document.getElementByID("score")<?;
    //out.println(finalscore);
    ?>
<%

</body>


</html>
