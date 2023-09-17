<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Digital Clock Dark/Light</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'><link rel="stylesheet" href="./style.css">
<style>
/* Google fonts import link */
@import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Orbitron', sans-serif;
  transition: all 0.4s ease;
}
section{
  min-height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #F0F8FF;
  padding: 0 20px;
}
section.dark{
  background: #24292D;
}
section .container{
  display: flex;
  align-items center;
  justify-content: center;
  height: 220px;
  max-width: 560px;
  width: 100%;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  border-radius: 12px;
  position: relative;
}
section.dark .container{
  background: #323840;
}
section .container .icons i{
  position: absolute;
  right: 17px;
  top: 17px;
  height: 30px;
  width: 30px;
  background: #24292D;
  color: #fff;
  text-align: center;
  line-height: 30px;
  border-radius: 50%;
  font-size: 14px;
  cursor: pointer;
}
section.dark .container .icons i{
  background: #fff;
  color: #323840;
}
.container .icons i.fa-sun{
  opacity: 0;
  pointer-events: none;
}
section.dark .container .icons i.fa-sun{
  opacity: 1;
  pointer-events: auto;
  font-size: 16px;
}
section .container .time{
  display: flex;
  align-items: center;
}
.container .time .time-colon{
  display: flex;
  align-items: center;
  position: relative;
}
.time .time-colon .am_pm{
  position: absolute;
  top: 0;
  right: -50px;
  font-size: 20px;
  font-weight: 700;
  letter-spacing: 1px;
}
section.dark .time .time-colon .am_pm{
  color: #fff;
}
.time .time-colon .time-text{
  height: 100px;
  width: 100px;
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  background: #F0F8FF;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
section.dark .time .time-colon .time-text{
  background: #24292D;
}
.time .time-colon .time-text,
.time .time-colon .colon{
  font-size: 35px;
  font-weight: 600;
}
section.dark .time .time-text .num,
section.dark .time .colon{
  color: #fff;
}
.time .time-colon .colon{
  font-size: 40px;
  margin: 0 10px;
}
.time .time-colon .time-text .text{
  font-size: 12px;
  font-weight: 700;
  letter-spacing: 2px;
}
section.dark  .time .time-colon .text{
  color: #fff;
}
</style>

</head>
<body>
<!-- partial:index.partial.html -->
<section>

  <div class="container">
    <div class="icons">
      <i class="fas fa-moon"></i>
      <i class="fas fa-sun"></i>
    </div>
    <div class="time">
      <div class="time-colon">
        <div class="time-text">
          <span class="num hour_num">08</span>
          <span class="text">Hours</span>
        </div>
        <span class="colon">:</span>
      </div>
      <div class="time-colon">
        <div class="time-text">
          <span class="num min_num">45</span>
          <span class="text">Minutes</span>
        </div>
        <span class="colon">:</span>
      </div>
      <div class="time-colon">
        <div class="time-text">
          <span class="num sec_num">06</span>
          <span class="text">Seconds</span>
        </div>
        <span class="am_pm">AM</span>
      </div>
    </div>
  </div>

</section>
<!-- partial -->
  <script>
let section = document.querySelector("section"),
  icons = document.querySelector(".icons");

icons.onclick = () => {
  section.classList.toggle("dark");
};

// creating a function and calling it in every seconds
setInterval(() => {
  let date = new Date(),
    hour = date.getHours(),
    min = date.getMinutes(),
    sec = date.getSeconds();

  let d;
  d = hour < 12 ? "AM" : "PM"; //if hour is smaller than 12, than its value will be AM else its value will be pm
  hour = hour > 12 ? hour - 12 : hour; //if hour value is greater than 12 than 12 will subtracted ( by doing this we will get value till 12 not 13,14 or 24 )
  hour = hour == 0 ? (hour = 12) : hour; // if hour value is  0 than it value will be 12

  // adding 0 to the front of all the value if they will less than 10
  hour = hour < 10 ? "0" + hour : hour;
  min = min < 10 ? "0" + min : min;
  sec = sec < 10 ? "0" + sec : sec;

  document.querySelector(".hour_num").innerText = hour;
  document.querySelector(".min_num").innerText = min;
  document.querySelector(".sec_num").innerText = sec;
  document.querySelector(".am_pm").innerText = d;
}, 1000); // 1000 milliseconds = 1s
</script>

</body>
</html>
