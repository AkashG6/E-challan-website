const express = require('express')
const app = express();
const server = require('http').Server(app);
const io = require('socket.io').listen(server);
app.use(express.static(__dirname + '/'));
const db = require('./modules/db.js');


app.get('/', function(req, res) {
   res.sendFile('index.html');
});

server.listen(3000, function() {
   console.log('listening on localhost:3000');
});