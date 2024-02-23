import express from "express";
import mysql from "mysql2";
import cors from "cors";
import bcrypt, { hash } from "bcrypt";
import bodyParser from "body-parser";
import cookieParser from "cookie-parser";
import session from "express-session";
import jsonData from "../resources/film_data.json" assert {type:"json"}
const exp = express();
exp.use(express.json());
exp.use(express.urlencoded({ extended: true })); // or exp.use(bodyParser.urlencoded({extended: true}))
exp.use(cookieParser());
exp.use(
  session({
    key: "user_key",
    secret: "user_secret",
    resave: false,
    saveUninitialized: true,
    cookie: {
      expires: 3600 * 24,
    },
  })
);
exp.use(
  cors({
    origin: ["http://localhost:3001"], // this is for front-end
    methods: ["GET", "POST"],
    credentials: true, // allow cookie to be enable
  })
);

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "films",
});
connection.connect((err) => {
  if (err) {
    console.log("error connection.");
  } else {
    console.log("mysql connected succes.");
  }
});

// exp.get("/home",(req,res)=>{
//     const query = "SELECT * FROM films"
//     connection.query(query,(err,data)=>{
//         res.send(`<img src='${data[0].image_src}'/>`)
//     })
// })
exp.get("/film/:offset?", (req, res) => {
  const query = `SELECT * FROM films limit ?,12;`;
  let offset = req.params.offset == 1 ? 0 : 12 || 0
  connection.query(query,offset,(err, data) => {
    res.json(data);
    console.log(data)
  });
});
exp.get("/watch/:idf", (req, res) => {
  const query = `SELECT * FROM films where id=${req.params.idf};`;
  connection.query(query,req.params.idf,(err, data) => {
    res.json(data);
  });
});
exp.get("/tags/:idt", (req, res) => {
  const query = `SELECT tag_name FROM tags, tag_link where tags.id = tag_link.tag_id and film_id = ?`;
  connection.query(query,req.params.idt,(err, data) => {
    res.json(data);
    console.log(data)
  });
});

exp.post("/film", (req, res) => {
  let search = req.body.search;
  const query = `SELECT * FROM films where LOWER(title) LIKE CONCAT('%', LOWER(?), '%');`;
  connection.query(query, search, (err, data) => {
    res.json(data);
  });
});
exp.get("/tags", (req, res) => {
  const query = `SELECT * FROM tags;`;
  connection.query(query, (err, data) => {
    res.json(data);
  });
});

exp.get("/movies", (req, res) => {
  const query = `SELECT * FROM films order by release_date desc limit 12`;
  connection.query(query, (err, data) => {
    res.json(data);
  });
});
exp.get("/home", (req, res) => {
  const query = `SELECT * FROM films limit 4`;
  connection.query(query, (err, data) => {
    res.json(data);
  });
});
// get themes
exp.get("/themes/:idf", (req, res) => {
  console.log(req.params.idf)
  const query = `SELECT theme from themes_link,themes where themes_link.theme_id = themes.id and film_id = ?`;
  connection.query(query, req.params.idf,(err, data) => {
    res.json(data);
  });
});
// login get cookies
exp.get("/login", (req, res) => {
  if (req.session.user) {
    res.send({ loggedIn: true, user: req.session.user });
  } else {
    res.send({ loggedIn: false });
  }
});

// login post
exp.post("/login", (req, res) => {
  const email = req.body.email;
  const password = req.body.password;
  const query = "SELECT * FROM users where email=?";
  connection.query(query, email, (err, data) => {
    if (err) {
      console.err(err.message);
    } else if (data.length < 1) {
      console.log("no such user with this email");
      res.send(401);
    } else {
      bcrypt.compare(password, data[0].password, (err, result) => {
        if (err) {
          console.error(err);
        } else if (result) {
          // Passwords match
          req.session.user = data[0];
          console.log(req.session.user);
          console.log("Logged in");
          res.send(200);
        } else {
          // Passwords do not match
          console.log("Incorrect password");
          res.send(401);
        }
      });
    }
  });
});
exp.post("/register", (req, res) => {
  const fname = req.body.fname;
  const lname = req.body.lname;
  const email = req.body.email;
  const pass = req.body.pass;
  const confPass = req.body.confPass;
  const query =
    "INSERT INTO users (fname, lname, email, password) VALUES (?, ?, ?, ?)";
  bcrypt.hash(pass, 10, (err, hashedPassword) => {
    if (err) {
      console.error(err);
    } else {
      connection.query(
        query,
        [fname, lname, email, hashedPassword],
        (err, data) => {
          if (err) {
            console.log(err);
          } else {
            res.send("you have created your account");
          }
        }
      );
    }
  });
});



  // connection.query("INSERT INTO themes_link values(?,?)",[idt,idh],(err,data)=>{
  //   if(data){
  //     console.log("inserted themes")
  //   }
  // })
  // connection.query("SELECT * from film_themes;",(err,data)=>{
  //   connection.query("SELECT * from films;",(err,data2)=>{
  //     if(data){
  //       for(var i in jsonData){
  //       for(var theme of jsonData[i].thems){
  //         // console.log(obj.title,theme)
  //         for(var objTheme of data){
  //             if(data2){
  //               for(var film of data2){
  //                 if(film.title.trim().toLowerCase() == jsonData[i].title.trim().toLowerCase()){
  //           if(objTheme.theme.trim().toLowerCase() == theme.thems.trim().toLowerCase()){
  //                   console.log(objTheme.id, film.id)
  //                   connection.query("INSERT INTO themes_link values(?,?)",[objTheme.id, film.id],(err,data)=>{
  //                 if(err){
  //                   console.log("error")
  //                 }else{
  //                   console.log("data inserted")
  
  //                 }
  //               })
  //                 }
  //               }}
  //             }
  //             if(objTheme.theme == theme.thems){
  //               // console.log(+i+1)
                
  //             }
  //           }
  //         }
        
  //     }
  //   }
  //   })
  // })

  // Api
  exp.get("/api/getMovie",(req,res)=>{
    const film_id = req.query.idf || ""
    const search = req.query.sch || ""
    const tag = req.query.tag || 1
    const theme = req.query.theme || ""
    const date = req.query.date || null
    const offset = req.query.offset == 1 ? 0 : 12 || 0
    const query = `SELECT * FROM films,tag_link where films.id = tag_link.film_id AND tag_id = ${+tag} AND title like "%${search}%" limit ${offset}, 12;`
    connection.query(query,[offset],(err, data) => {
      res.json(data);
    });
  })

  exp.get("/movies/tag/:id?", (req, res) => {
    const query = `SELECT * FROM films,tag_link where films.id = tag_link.film_id AND tag_id = ${+req.params.id||1} limit 5`;
    connection.query(query, (err, data) => {
      res.json(data);
    });
  });


  exp.listen(3000, () => {
    console.log("connected.");
  });