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




let insertBuyerDeatils = async (data) => {
    try {
        const inserT = await sequelize.query(`INSERT INTO buyer_details (buyer_name,buyer_contact,buyer_address) VALUES ('${data.buyer_name}', '${data.buyer_contact}', '${data.buyer_address}')`, { type: QueryTypes.INSERT });
        return new Promise((resolve, reject) => {
            resolve(inserT)
        })
    } catch (error) {
        console.log("error:", error)
    }
}



module.exports = {
    insertBuyerDeatils : insertBuyerDeatils
}