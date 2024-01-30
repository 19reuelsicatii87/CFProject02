<button type="button" onclick="showDate()">
   Click me to display Date and Time.
</button>

<p id="demo"></p>

<script>
   function showDate() {
     document.getElementById('demo').innerHTML = Date();
     document.getElementById('demo').style.color = "red";
        }
</script>