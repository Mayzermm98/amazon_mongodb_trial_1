// IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");

// IMPORTS FROM OTHER FILES
const authRouter = require('./routes/auth');

// INIT
const PORT = 3000;
const app = express();
const DB = "mongodb+srv://Mayzer:Thecullens01@cluster0.1j8wxf5.mongodb.net/?retryWrites=true&w=majority";


// MIDDLEWARE
app.use(express.json());
app.use(authRouter);

// CONNECTIONS.
mongoose.connect(DB).then(() => {
    console.log('The connection to MongoDB database is Successful.');
}).catch((e)=> {
    console.log(e);
});


app.listen(PORT, "0.0.0.0" , () => {
    console.log(`Connected at port ${PORT}`);
});