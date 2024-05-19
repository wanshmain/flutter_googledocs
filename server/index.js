const express=require("express");
const mongoose=require("mongoose");
const authrouter = require("./routes/auth");
const PORT=process.env.PORT | 3001;//stored in the site to which we deploy the server
//3001 is only for the local development so process .env.port because the sites only provides the env port
const app=express();//intitliating the express and stored in the app variable

app.use(express.json());
app.use(authrouter);

const DB="mongodb+srv://wanshmain:Wansharsh1*@cluster0.dnh11td.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";



mongoose.connect(DB).then(()=>{
    console.log('connection sucessfull!');
}).catch((err)=>{
    console.log(err);
})

//async->await
//.then((Data)=> print(data))

app.listen(PORT, "0.0.0.0", ()=>{
    console.log(`connected at port ${PORT}`);//or use ${port} but use `` this in the console.log insted of 3001 if deploying
    
});//helps to start the server
//0.0.0.0 for accessing it from anywhere from any ip address
//()=>{} this is how we create a function in javascript or use function