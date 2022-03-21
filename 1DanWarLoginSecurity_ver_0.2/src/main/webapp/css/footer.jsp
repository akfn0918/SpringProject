<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "3dc17199-eafd-4a83-9008-3e64d1544643"
  });
</script>
<!-- End Channel Plugin -->
    
        <footer class="bg-danger">
            <div class="container"><p class="m-0 text-center text-white">고객센터 1600 - 1234</p></div>
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; '일'단 배달</p><hr></div>
            <div class="container"><p class="m-0 text-center text-white"> 간단한 문의 사항은 하단 버튼을 이용 부탁드리며, 실시간 챗봇은 우측 하단 봇을 이용해 주세요.</p>

                          <form action="/QA" method="get">
                    <p align="center"><input type="submit" value="Q & A"></p>
           </form>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>