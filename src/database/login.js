const express = require("express");
const app = express();
const bodyParser = require('body-parser');                            //imp
app.use(bodyParser.json());                                           //imp
app.use(bodyParser.urlencoded({ extended: true }));


const { Sequelize, QueryTypes } = require('sequelize');
const sequelize = new Sequelize('jewellery_data', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});


let selectloginDetails = async () => {
    try {
        const selecT = await sequelize.query(`SELECT * FROM login`, { type: QueryTypes.SELECT });
        return new Promise((resolve, reject) => {
            resolve(selecT);
        })
    } catch (error) {
        console.log("error:", error)
    }
}


 const insertLoginDeatils = async (req, res) => {
    try {
        console.log(req.body)

        const LoginData = await sequelize.query(`SELECT * from register WHERE email='${req.body.email}'`, { type: QueryTypes.SELECT });

        return new Promise((resolve, reject) => {
            resolve(LoginData)
        })

    }
    catch (err) {
        console.log('error while api build:', err)
    }
}


module.exports = {
    selectloginDetails : selectloginDetails,
    insertLoginDeatils:insertLoginDeatils
}