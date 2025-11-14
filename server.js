const express = require("express");
const server = express();
const router = require("./routes/login");

server.use( express.json() );
server.use( router );

server.listen( 6000 , ()=>{ 
    console.log(" server run fine ");
});




