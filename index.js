const express = require('express');
const app = express();

const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }))

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();


app.get("/", async (req, res) => {

    /* const page =  1;
    const limit = 50;
    const skip = (page - 1) * limit;
        const allUsers = await prisma.user.findMany();
        res.json(allUsers);  */

        res.sendFile(__dirname+"/index.html")
   
  // console.log(req.body);
 // res.sendFile(__dirname+"/index.html")
});

app.post("/create", async (req, res) => {

    const newUser = await prisma.user.create({
        data : {
            name : req.body.elam,
        }
    });
   // console.log(newUser.id);
    res.send(req.body.elam)
 // res.sendFile(__dirname+"/index.html")
});
app.listen(5000, function(){
    //console.log("elam")
})

/* async function main() {

    // Récupération de tous les utilisateurs
    const allUsers = await prisma.payment.findMany();
    console.log('All users:', allUsers);
}

main()
    .catch((e) => {
        throw e;
    })
    .finally(async () => {
        await prisma.$disconnect();
        prisma.communes.findMany({where : {
            name : 'yopougon',
        },
        orderBy :{
            c
        }
    })
    });
 */