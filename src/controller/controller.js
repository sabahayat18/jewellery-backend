let response = require('../libs/responseLib');
let loginPage = require('../database/login');
let regPage = require('../database/register');
let allproducts = require('../database/AllProducts');
let contact = require("../database/contact");
let buyer_details = require("../database/buyer_details");



//GET LOGIN DETAILS --

let getlogin = async (req, res) => {
    let details = await loginPage.selectloginDetails(req);
    res.status(200).send(response.generate(false, 'Server is Running!', details));
}


//GET REGISTRATION DETAILS --

let getReg = async (req, res) => {
    let details1 = await regPage.selectRegDetails(req);
    res.status(200).send(response.generate(false, 'Server is Running!', details1));
}



//INSERT LOGIN DETAILS --

const insertLoginDtls = async (req, res) => {

    try {
        let logInto =await loginPage.insertLoginDeatils (req)
        console.log(logInto)
        
        if (logInto.length > 0) {
            res.status(200).send(response.generate(false, 'logged in successfully', logInto))
        }
        else {
            res.status(201).send(response.generate(true, 'Please register', logInto))
        }
    }
    catch (error) {
        console.log('Error:', error.message);
        res.status(500).send(response.generate(true, error.message));
    }
}


//INSERT REGISTRATION DETAILS --

const insertRegisterdtls = async (req, res) => {
    try {
        let register = await regPage.insertRegDetails(req);
        console.log(register)

        if (!register) {
            res.status(200).send(response.generate(true, 'Please Fill the form Properly/Already an user'));
        }
        else if (register.length > 0) {
            res.status(200).send(response.generate(false, 'use registered successfully', register));

        }
        else {
            res.status(201).send(response.generate(true, 'No user found', register))
        }

    }
    catch (error) {
        console.log('Error:', error.message);
        res.status(500).send(response.generate(true, error.message));
    }

}


let ProductsDetails = async (req, res) => {
    let getdtls = await allproducts.AllProductsDetails(req, res);
    res.status(200).send(response.generate(false, 'Server is Running!', getdtls));
}


let getAllProductsDetails = async (req, res) => {
    let getdtls = await allproducts.selectAllProductsDetails();
    res.status(200).send(response.generate(false, 'Server is Running!', getdtls));
}


let getInsertContact = async (req, res) => {
    let getData = await contact.insertContactData(req.body);
    res.status(200).send(response.generate(false, '', getData))
}


// Buyer Details --

let BuyerDeatils = async (req, res) => {
    let insertINTO = await buyer_details.insertBuyerDeatils(req.body);
    res.status(200).send(response.generate(false, '', insertINTO))
}


module.exports = {
    getlogin: getlogin,
    getReg: getReg,
    insertRegisterdtls: insertRegisterdtls,
    insertLoginDtls: insertLoginDtls,
    getAllProductsDetails: getAllProductsDetails,

    ProductsDetails: ProductsDetails,
    getInsertContact: getInsertContact,
    BuyerDeatils:BuyerDeatils
}