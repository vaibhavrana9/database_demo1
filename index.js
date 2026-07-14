const express = require("express");

const app = express();

app.use(express.json());

app.use(express.urlencoded({
        extended : true
}))

personData = [];



port = 3000;

app.listen( port, ()=> {
        console.log('Successfully connected of ', port)
        });



//post api

app.post("/api/add_person",(req,res) => {
        console.log("Result: ", req.body);


        const pdata = {
                "id" : personData.length+1,
                "pname" : req.body.pname,
                "pphone" : req.body.pphone,
                "page" : req.body.page,
        }

        personData.push(pdata);
        
        console.log("Final result", pdata);

        res.statusCode(200).send ({
                "Status_code" : 200,
                "Message" : "Person data added successfully",
                "Person" : pdata,
        });

})
