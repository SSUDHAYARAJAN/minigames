 // TODO
 // Timer

 // set HTML shortcut variables
 const startButton = document.getElementById('start');
 const questionDiv = document.getElementById('question');
 const score = document.getElementById('score');
 const red = document.getElementById('red-light');
 const green = document.getElementById('green-light');
 const timer = document.getElementById('timer');
 const slideDiv = document.getElementById('timer-slide');
 const timerLabel = document.getElementById('timer-label');
 //const scorecontainer=document.getElementsByClassName('score-container');
 var count=0;

 // helper functions
 function setHTML(el, text){
   el.innerHTML = text;
 }

 function light(light){
   window.clearTimeout(reset);
   red.style.background = "black";
   green.style.background = "black";
   if (light === "red") red.style.background = "white";
   if (light === "green") green.style.background = "white";
   reset = setTimeout(resetLights, 500);
 }

 let reset;
 function resetLights(){
   light("");
  }

 function slide(bool){
   if(bool){
     slideDiv.classList.add('slid-up');
   } else {
     slideDiv.classList.remove('slid-up');
   }
 }

 // listener functions
 document.addEventListener('keypress', (event) => {
   const keyName = event.key;
   const number = parseInt(keyName);
   if (isNaN(number))
   {
     window.alert("enter numberic value");
     return;
   }
   ob.enteredAnswer = number;
   ob.checkAnswer();
 });

 startButton.addEventListener('click', (event) => {
   ob.start();
   count=0;
 });

 // create Object
 const ob = new Object;
 ob.score = 0;
 ob.inProgress = false;
 ob.countDown = false;
 ob.countDownStart = Date.now();
 ob.startTime = Date.now();

 // Object Methods

 ob.start = function(){
   if (ob.inProgress) return;
   if (ob.countDown) return;
   setHTML(timerLabel, "Starting in");
   slide(false);
   ob.countDownStart = Date.now();
   ob.countDown = true;
 }

 ob.begin = function(){
   if (ob.inProgress) return;
   ob.score = 0;
   setHTML(score, ob.score);
   ob.countDown = false;
   ob.startTime = Date.now()
   ob.inProgress = true;
   ob.newQuestion();
 }

 ob.newQuestion = function(){
   const a = Math.floor(Math.random() * 10);
   const r1 = Math.floor(Math.random() * 10);
   const r2 = Math.floor(Math.random() * 10);
   const r3=Math.floor(Math.random()*10);
   const r4 = r1 + r2 +r3 - a;
   const string = `${r1} + ${r2} + ${r3} - ${r4}`;
   this.correctAnswer = a;
   setHTML(questionDiv, string);
   count++;
   setHTML(qc,count);
 }

 ob.checkAnswer = function(){
   if (!ob.inProgress) return;
   if (ob.correctAnswer === ob.enteredAnswer){
     //setHTML(result, "Correct!");
     light("green");
     ob.scoreChange(100);
   } else {
   // setHTML(result, "Incorrect!");
     ob.scoreChange(-50);
     light("red");
   }
   ob.newQuestion();
 }

 ob.scoreChange = function(change){
   ob.score += change;
   setHTML(score, ob.score);
  <!-- document.getElementById("score").value = score;  -->
   if(ob.score<0)
       score.style.backgroundColor = "red";
   else
       score.style.backgroundColor = "green";
 }

 ob.end = function(){
   ob.inProgress = false;
   setHTML(questionDiv, "");
   slide(true);
 }

 // Timer functions

 function checkTimers(){
   if (ob.countDown){
     const diff = 3 - Math.floor((Date.now() - ob.countDownStart) / 1000);
     if (diff > 0){
       setHTML(timer, diff);
     } else {
       ob.begin();
     }
   }
   if (ob.inProgress){
         const diff = 25 - Math.floor((Date.now() - ob.startTime) / 1000);
     if (diff > -1){
       setHTML(timerLabel, "Remaining");
       setHTML(timer, diff);
     } else {
       ob.end();
     }
 }
 }
 setInterval(checkTimers, 100);