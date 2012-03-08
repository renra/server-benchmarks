var http = require('http');
var fs = require('fs');
var resp = '<html><body>It works!</body></html>'
 
http.createServer(function (request, response) {
  response.end(resp)
}).listen(3000);
