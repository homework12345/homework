<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>summernote</title>
  <script src="http://code.jquery.com/jquery-1.11.3.js"></script>

  <!-- include libraries BS2 -->
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css"/>
  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>

  <!-- include summernote -->
  <link rel="stylesheet" href="../dist/summernote.css">
  <script type="text/javascript" src="../dist/summernote.js"></script>
  <style>
    .container {
      position: absolute;
      left: 10%;
      right: 10%;
      top: 10%;
      bottom: 10%;
    }

    .custom-toolbar {
      padding: 5px;
    }

    h1 {
      text-align: center;
    }
  </style>

  <script type="text/javascript">
    // referer to https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random
    function getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min)) + min;
    }
    $(document).ready(function() {
      $('.summernote')
          .on('summernote.change', function() {
            var $buttons = [
              $(this).summernote("toolbar.get", "ol"),
              $(this).summernote("toolbar.get", "bold"),
              $(this).summernote("toolbar.get", "italic")
            ];
              
            for(var i = 0; i < $buttons.length; i++) {
              var r = getRandomInt(0, 255);
              var g = getRandomInt(0, 255);
              var b = getRandomInt(0, 255);

              $buttons[i].css('background-color', 'rgb(' + r + ',' + g + ',' + b + ')');
            }

          })
          .summernote({ height : 300 });

    });
  </script>
</head>
<body>
<div class="container">
  <h1>这是summernote富文本编辑器</h1>
  <div class="summernote">
    
  </div>
</div>

</body>
</html>
