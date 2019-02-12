const express =require("express");
const port = 3000;

let app = express();
app.get("/",(req,res)=>res.send("Hello"));
app.listen(port,()=>{console.log(`listening in ${port}`)});