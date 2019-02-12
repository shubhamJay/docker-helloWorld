const express =require("express");
const port = 3000;

const homePage = `<form method=POST action=/todo><input name="title" placeholder="title"/>
<input name="description" placeholder="description"/><button type="submit">submit</button></form>`;

let app = express();
app.use(express.urlencoded({extended:false}))
app.get("/",(req,res)=>res.send(homePage));
app.post("/todo",(req,res)=>{res.redirect("/")})

app.listen(port,()=>{console.log(`listening in ${port}`)});