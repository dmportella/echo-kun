# echo-kun
Simple Node App that responds with the request object of the incoming request.

Very simple app created to respond with the deserialised request object from the node js http server framework.

I created that to see what headers and information a reverse proxy was sending to one application pool.

```js
const http = require('http');
const inspect = require('util').inspect;

const hostname = '0.0.0.0';
const port = 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(inspect(req));
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
```
