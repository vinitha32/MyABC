<html lang="en">

    <div style="float: right">
          <a href="logout.jsp"> <font size="4" font color="red">LOGOUT</a></font>
    </div>
<head>
  <meta charset="UTF-8">
  <title>HTML5 Canvas</title>
</head>


<body>
<input id="button" type="button" value="CLEAR">
<canvas id="draw"></canvas>

<script>

alert("Hello!!Start Painting!!");


  const canvas = document.querySelector('#draw');
  const ctx = canvas.getContext('2d');
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
  let isDrawing = false;
  let lastX = 0;
  let lastY = 0;
  let hue = 0;
  ctx.strokeStyle = "#BADA55";
  ctx.lineJoin = "round";
  ctx.lineCap = "round";
  ctx.lineWidth = 30;
  ctx.globalCompositeOperation = 'source-over';

  function draw(e) {
    if(!isDrawing) return;
    ctx.strokeStyle = `hsl(${hue}, 100%, 50%)`;
    ctx.beginPath();
    // start from
    ctx.moveTo(lastX, lastY);
    // go to
    let X = e.offsetX || e.changedTouches[0].pageX;
    let Y = e.offsetY || e.changedTouches[0].pageY;
    ctx.lineTo(X, Y);
    ctx.stroke();
    lastX = e.offsetX || e.changedTouches[0].pageX;
    lastY = e.offsetY || e.changedTouches[0].pageY;
    hue++;
    if (hue > 360) {
      hue = 0;
    }
  }
  canvas.addEventListener('mousemove', draw);
  canvas.addEventListener('touchmove', draw);
  canvas.addEventListener('mousedown', (e) => {
    isDrawing = true;
    [lastX, lastY] = [e.offsetX, e.offsetY];
  });
  canvas.addEventListener('touchstart', (e) => {
    isDrawing = true;
    [lastX, lastY] = [e.changedTouches[0].pageX, e.changedTouches[0].pageY];
  }, {passive: false});
  canvas.addEventListener('mouseup', () => isDrawing = false);
  canvas.addEventListener('mouseout', () => isDrawing = false);
  canvas.addEventListener('touchend', () => isDrawing = false);
  canvas.addEventListener('touchleave', () => isDrawing = false);
  document.getElementById('button').addEventListener('click', function() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
  });
</script>

</body>
</html>