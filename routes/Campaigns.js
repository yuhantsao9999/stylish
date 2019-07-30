var express = require("express");
var mysql = require('mysql');
var multer = require('multer');
const router = express.Router();
var app = express();
const NodeCache = require("node-cache");
const Cache = new NodeCache({ stdTTL: 100, checkperiod: 120 });

// 從根目錄使用router
app.use('/', router);


// GET Champaigns.html
router.get('/', (req, res) => {
    res.send('Campaigns');
});

// connect mysql
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "sweet840818",
    database: "stylish",
});

con.connect(function(err) {
    if (err) {
        console.error(err);
        return;
    }
    console.log("Mysql Connect campaigns");
});

//使用multer將檔案campaigns/傳到並幫檔案命名
var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'uploads/Campaigns')
    },
    filename: function(req, file, cb) {
        cb(null, file.originalname + '-' + Date.now() + ".jpg");

    }

})
var upload = multer({ storage: storage })

//使前端提交請求給後端
router.post('/marketing/campaigns', upload.array('files'), function(req, res, next) {
    var ID = req.body.product_ID;
    var Story = req.body.story;
    const file = req.files;
    if (!file) {
        const error = new Error('Please upload a file')
        error.httpStatusCode = 400
        return next(error)
    }
    console.log(req.files)
        // const path = "\"" + file[0].path + "\"";
    var campaign_picture = req.files[0].filename;
    console.log(campaign_picture)
        //插入資料進myssql
    var mysql = "INSERT INTO campaign (product_id,picture,story) Values('" + ID + "','" + campaign_picture + "','" + Story + "');";
    con.query(mysql, function(err, result) {
        if (err) throw err
        console.log('successful1')
        res.send('successful');
    });

});

//從mysql獲取campaign資料
router.get("/api/1.0/marketing/campaigns", function(req, res) {
    Cache.get("campaigns", function(err, value) {
        if (!err) {
            if (value == undefined) {
                var mysql_campaigns = "SELECT * from campaign"
                con.query(mysql_campaigns, function(err, result) {
                    if (err) throw err
                    var campaigns = result;
                    // res.json(campaigns);

                    // key not found
                    obj = { chade: campaigns }
                    Cache.set("campaigns", obj, function(err, success) {
                        if (!err && success) {
                            console.log(success);
                            // true
                            // ... do something ...
                        }
                    })
                    res.json(obj);
                });
            } else {
                console.log(value);
                res.json(value)
                    //{ my: "Special", variable: 42 }
                    // ... do something ...
            }
        }
    });

});

module.exports = router;