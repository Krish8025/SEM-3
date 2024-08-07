const express=require('express');
const app = express();
let arr=[
    {
        "id":1, "name":"krish",
    },
    {
        "id":2, "name":"chabhadiya"
    }
]
app.get('/home',(req,res)=>{
    res.json(arr);
})
app.get('/home/:id',(req,res)=>{
    const urlId = req.params.id;
    const result=arr.find(e=>e.id==urlId)
    if(result){
        res.json(result)
    }
    else{
        res.send("no data found");
    }
})
const bodyparser  = require('body-parser')
app.use(bodyparser.urlencoded({extended:false}))
app.post('/home/add',(req,res)=>{
    const{id,name}=req.body;
    const result ={
        "id":id,
        "name":name
      }
      arr.push(result);
      res.json(arr);
})
app.delete('/dlt/:id',(req,res)=>{
    const urlId=req.params.id;
    const result=arr.find(e=>e.id==urlId);
    if(result){
        const newArray=arr.filter(e=>e.id!=urlId);
        res.json(newArray);
    }
    else{
        res.send("id nathi");
    }
})
app.listen(3003,()=>{
    console.log("server is started");
})