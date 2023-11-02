const { Sequelize, QueryTypes } = require('sequelize');
const sequelize = new Sequelize('jewellery_data', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});


let  AllProductsDetails = async (req,res) => {
    try {
        const selecT = await sequelize.query(`SELECT * FROM all_products WHERE id =${req.query.id}`, { type: QueryTypes.SELECT });
        console.log(selecT)
        return new Promise((resolve, reject) => {
            resolve(selecT);
        })
    } catch (error) {
        console.log("error:", error)
    }
}



let selectAllProductsDetails = async () => {
   
    try {
        const selecT = await sequelize.query(`SELECT * FROM all_products`, { type: QueryTypes.SELECT });
        return new Promise((resolve, reject) => {
            resolve(selecT);
        })
    } catch (error) {
        console.log("error:", error)
    }
}



module.exports = {
    selectAllProductsDetails : selectAllProductsDetails,
    AllProductsDetails:AllProductsDetails
}