const passLib = require('../libs/passwordLib');

const { Sequelize, QueryTypes } = require('sequelize');
const sequelize = new Sequelize('jewellery_data', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});



let selectRegDetails = async () => {
    try {
        const selecT = await sequelize.query(`SELECT * FROM registration`, { type: QueryTypes.SELECT });
        return new Promise((resolve, reject) => {
            resolve(selecT);
        })
    } catch (error) {
        console.log("error:", error)
    }
}


const insertRegDetails = async (req, res) => {

    try {

        if (!req.body.user_name || !req.body.email || !req.body.password|| !req.body.contact) {
            return new Promise((resolve, reject) => {
                resolve("")
            })
        }
        let checkUser = await sequelize.query(`SELECT * FROM register WHERE email='${req.body.email}'`, { type: QueryTypes.SELECT })

        if (checkUser.length > 0) {
            return new Promise((resolve, reject) => {
                resolve("")
            })
        }
        let pass = await passLib.generatehash(req.body.password)
        
        let userdetails = await sequelize.query(`INSERT INTO register (user_name,email,password,contact) VALUE ('${req.body.user_name}', '${req.body.email}', '${pass}', '${req.body.contact}')`, { type: QueryTypes.INSERT })
        return new Promise((resolve, reject) => {
            resolve(userdetails)
        })
    }
    catch (err) {
        console.log('error while api build:', err)
    }
}







module.exports = {
    selectRegDetails: selectRegDetails,
    insertRegDetails: insertRegDetails


}