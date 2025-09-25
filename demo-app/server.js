const http = require('http');
const server = http.createServer((req,res)=>{
  res.writeHead(200, {'Content-Type':'application/json'});
  res.end(JSON.stringify({ ok:true, msg:'Hello GitKraken demo' }));
});
server.listen(8080, ()=>console.log('demo app on :8080'));
