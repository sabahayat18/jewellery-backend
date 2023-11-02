require('dotenv').config();
const express = require('express');
const app = express();
app.use(express.json());
const cors = require('cors');
app.use(express.urlencoded({extended:false}));  
app.use(cors());




require("./src/routes/route").setRouter(app);
require('./www/rest/server').startServer(app);
require('./src/database/db').connection(app);



















































//hash password 
// let insertRegDetails = async (data) =>{
//     try{
//         return new Promise(async (resolve, reject) => {
//             if(data.new_password == data.cofirm_password){
//                 let pass = await passLib.generatehash(data.new_password)
//                 const insert = await sequelize.query(`INSERT INTO registration(user_name,email,phone_number,new_password) VALUES ('${data.user_name}', '${data.email}', '${data.phone_number}','${pass}')`, {type: QueryTypes.INSERT});
//                 resolve(insert)
//             }else{
//                 resolve({
//                     'error':'Password not matched.'
//                 })
//             }
//         });
//     } catch (error) {
//         console.log("error:", error)
//     }
// }





//hash password 
// let insertRegDetails = async (data) =>{
//     try{
//         return new Promise(async (resolve, reject) => {
//             if(data.new_password == data.cofirm_password){
//                 let pass = await passLib.generatehash(data.new_password)
//                 const insert = await sequelize.query(`INSERT INTO registration(user_name,email,phone_number,new_password) VALUES ('${data.user_name}', '${data.email}', '${data.phone_number}','${pass}')`, {type: QueryTypes.INSERT});
//                 resolve(insert)
//             }else{
//                 resolve({
//                     'error':'Password not matched.'
//                 })
//             }
//         });
//     } catch (error) {
//         console.log("error:", error)
//     }
// }



