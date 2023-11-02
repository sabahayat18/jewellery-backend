const http = require('http');
const ws = require('../ws/websocket');


const { Sequelize} = require('sequelize');
const sequelize = new Sequelize('jewellery_data', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});




let startServer = (app) => {
    const server = http.createServer(app);

    
    server.listen(process.env.PORT);

    server.on('listening',()=>{
        console.log(`Server is Listening on PORT : ${process.env.PORT}`);
        ws.startSocket(server);
    });

    server.on('error',(e)=>{
        console.log('Error : --> ',e);
    });
}

module.exports = {
    startServer:startServer
}