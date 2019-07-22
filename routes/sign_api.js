var express = require("express");
var mysql = require('mysql');
var app = express();
const router = express.Router();
var bodyParser = require('body-parser')
const crypto = require('crypto');


router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());

// 從根目錄使用router
app.use('/', router);

// GET sign_up.html
router.get('/', (req, res) => {
    res.send('sign_up');
});


// GET sign_in.html
router.get('/', (req, res) => {
    res.send('sign_in');
});

// GET profile.html
router.get('/', (req, res) => {
    res.send('profile');
});

//contect mysql
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "sweet840818",
    database: "stylish"
});

con.connect(function(err) {
    if (err) throw err;
    console.log("Mysql Connect user");
})

//signup API
router.post('/user/signup', function(req, res) {
    var name = req.body.name;
    var email = req.body.email;
    var pwd = req.body.password;
    var test = {};
    var array = [];
    var hash = crypto.createHash('sha256');
    hash.update(pwd + email);
    var token = hash.digest('hex')
    console.log(req.body.name)
    console.log(token)
    var user = {
        access_token: token,
        access_expired: 3600,
        provider: "native",
        name: name,
        email: email,
        picture: "https://schoolvoyage.ga/images/123498.png",
    }
    var sql = "INSERT INTO user SET ?"
    var sql2 = "SELECT * from user where email='" + email + "';"
    var sql3 = "SELECT email from user where email='" + email + "';"
    con.query(sql3, function(err, result3) {
        if (err) throw err;
        if (String(result3).length == 0) {
            con.query(sql, user, function(err, result) {
                if (err) throw err;
                con.query(sql2, function(err, result2) {
                    var user = result2;
                    console.log(user)
                    if (err) throw err;
                    // access.push({ access_token: user[0].access_token, access_expired: user[0].access_expired })
                    array.push({ id: user[0].id, provider: user[0].provider, name: user[0].name, email: user[0].email, pricture: user[0].picture });
                    test['data'] = ({ access_token: user[0].access_token, access_expired: user[0].access_expired, user: array[0] });
                    res.json(test);
                });
            });
        } else {
            res.send('"error": "Invalid token."')
        }
    });
});

//signin API
router.post('/user/signin', function(req, res) {
    var name = req.body.name;
    var email = req.body.email;
    var pwd = req.body.password;
    var test = {};
    var array = [];
    var hash = crypto.createHash('sha256');
    hash.update(pwd + email);
    var token = hash.digest('hex')
    console.log(token)

    var mysql4 = "SELECT * from user where email='" + email + "';"
    con.query(mysql4, function(err, result4) {
        if (err) throw err;
        var sign_in = result4;
        console.log(result4);
        var access_token = sign_in[0].access_token
        console.log(access_token);
        console.log(token)
        if (access_token == token) {
            array.push({ id: sign_in[0].id, provider: sign_in[0].provider, name: sign_in[0].name, email: sign_in[0].email, pricture: sign_in[0].picture });
            test['data'] = ({ access_token: sign_in[0].access_token, access_expired: sign_in[0].access_expired, user: array[0] });
            res.json(test);
        } else {
            res.send('"error": "Invalid token."')
        }
    });
});

//User Profile APIs
router.get('/user/profile', function(req, res) {
    var Bearer_token = String(req.headers.authorization)
    console.log("bt : " + Bearer_token)
    var test = {};
    var array = [];
    var Bearer = Bearer_token.substr(0, 6);
    var Token = Bearer_token.substr(7, Bearer_token.length - 1);
    console.log("tokn : " + Token)
        //取出mysql中的token
    var mysql5 = "SELECT * from user where access_token = '" + Token + "';"
    con.query(mysql5, function(err, result5) {
        if (err) throw err;
        var profile = result5;
        console.log('token')
        if (Bearer == 'Bearer' && profile.length != 0) {
            array.push({
                id: profile[0].id,
                provider: profile[0].provider,
                name: profile[0].name,
                email: profile[0].email,
                pricture: profile[0].picture
            });
            console.log(array);
            test['data'] = (array[0]);
            res.send(test);
        } else {
            res.send('"error": "Invalid token."')
        };
    });
});
module.exports = router;