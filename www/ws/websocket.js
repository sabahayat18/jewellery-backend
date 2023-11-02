const socketio = require("socket.io");

let startSocket = (server) => {
    let io = socketio(server,{
        cors: {
          origin: '*',
        }
      });
}

module.exports = {
    startSocket:startSocket
}
