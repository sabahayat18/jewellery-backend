const {Sequelize, QueryTypes} = require("sequelize");
const sequelize = new Sequelize ("jewellery_data", "root", "", {
    host: 'localhost',
    dialect: "mysql"
})


let insertContactData = async (data) =>{
    try {
        let insetData = await sequelize.query(`INSERT INTO contact (username, email, message) VALUES ("${data.username}", "${data.email}", "${data.message}")`, {type: QueryTypes.INSERT})
        return new Promise ((resolve,reject)=>{
            resolve(insetData)
        })
    } catch (error) {
        console.log("error:" ,error)
    }
}


module.exports ={
    insertContactData:insertContactData
}