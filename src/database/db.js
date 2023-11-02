

const { Sequelize} = require('sequelize');
const sequelize = new Sequelize('jewellery_data', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});

let connection = async () => {
    try {
        await sequelize.authenticate();
       {
            console.log(`listing port on at : ${process.env.PORT}`)
        }
        console.log('Connection has been established successfully....!!');
    } catch (error) {
        console.error('Unable to connect to the database:', error);
    }
}



module.exports={
    connection:connection
}