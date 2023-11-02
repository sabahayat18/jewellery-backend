const Controller = require('../controller/controller');


let setRouter = (app) => {
   
    const baseUrl = process.env.APIVERSION;
    app.get(`/${baseUrl}/selectloginDetails`,Controller.getlogin);
    app.get(`/${baseUrl}/selectRegDetails`,Controller.getReg);
    app.post(`/${baseUrl}/insertLoginDeatils`,Controller.insertLoginDtls);
    app.post(`/${baseUrl}/insertRegDetails`,Controller.insertRegisterdtls);                 //insert registration details
    app.get(`/${baseUrl}/selectAllProductsDetails`,Controller.getAllProductsDetails);
    app.post(`/${baseUrl}/insertContactData`,Controller.getInsertContact);

    app.get(`/${baseUrl}/AllProductsDetails`,Controller.ProductsDetails);

    app.post(`/${baseUrl}/insertBuyerDeatils`,Controller.BuyerDeatils);                 //insert buyser details (modal)



    // app.post(`/${baseUrl}/saveBooksRoute`, upload.single('Picture'),Controller.saveBooksRoute);
}



module.exports = {
    setRouter : setRouter
}










































































//header----



// import { NavLink } from "react-router-dom";
// import './header.css'
// import MyNavbar from "./Navbar/Navbar";

// function Header (){
//     return (
//         <>
//             <div className="header" style={{borderBottom:'solid lightgrey 0.2px'}}>
//                 <NavLink to='/' className='d-flex' style={{alignItems:'center', textDecoration:'none'}}>
//                     <img src="./Images/logo10.png" alt="logo" style={{padding:'10px 0', height:'7.5rem'}}/>
//                     <p style={{fontSize:'2.5rem', fontWeight:800, paddingLeft:'1rem', paddingRight:'1rem', color:'#98aacf'}}>THE INFINITY MART</p>
//                 </NavLink>
//                 <MyNavbar />
//             </div >
//         </>
//     )
// }


// export default Header;





//navbar-----

// import './navbar.css';
// import Container from 'react-bootstrap/Container';
// import Nav from 'react-bootstrap/Nav';
// import { NavLink } from 'react-router-dom';
// import Navbar from 'react-bootstrap/Navbar';
// import 'bootstrap/dist/css/bootstrap.min.css';
// import { BsFillCartFill } from 'react-icons/bs';
// import { Avatar } from '@mui/material';
// import { useEffect, useState } from 'react';

// function MyNavbar() {
//     const [total, setTotal] = useState(0);

//     useEffect(() => {
//         let x = localStorage.getItem('MyCart');
//         let totalCartItems = JSON.parse(x);

//         let totalItems =
//             totalCartItems === null
//                 ? 0
//                 : totalCartItems.reduce((acc, curEle) => {
//                     return (acc = acc + curEle.quantity);
//                 }, 0);
//         setTotal(totalItems);
//     }, []);

//     return (
//         <>
//             <Navbar expand="lg" className="bg-body-tertiary">
//                 <Container fluid>
//                     <Navbar.Toggle aria-controls="navbarScroll" />
//                     <Navbar.Collapse id="navbarScroll">
//                         <Nav
//                             className="navlink me-auto my-2 my-lg-0"
//                             style={{
//                                 fontWeight: 600,
//                                 gap: '1.5rem',
//                                 textDecoration: 'none',
//                                 alignItems: 'center'
//                             }}
//                             navbarScroll
//                         >
//                             <NavLink to="/">HOME</NavLink>
//                             <NavLink to="/about">ABOUT</NavLink>
//                             <NavLink to="/products">PRODUCTS</NavLink>
//                             <NavLink to="/contact">CONTACT</NavLink>
//                             <NavLink to="/login">
//                                 <Avatar
//                                     alt="Remy Sharp"
//                                     src=""
//                                     style={{ marginLeft: '1rem' }}
//                                 />
//                             </NavLink>

//                             <NavLink
//                                 to="/cart"
//                                 className="navbar-cart-link"
//                                 style={{
//                                     display: 'flex',
//                                     alignItems: 'center',
//                                 }}
//                             >
//                                 <div>
//                                     <span className="navbar-cart-items">{total} </span>
//                                     <BsFillCartFill className="navbar-cart-logo" />
//                                 </div>
//                             </NavLink>
//                         </Nav>
//                     </Navbar.Collapse>
//                 </Container>
//             </Navbar>
//         </>
//     );
// }

// export default MyNavbar;


