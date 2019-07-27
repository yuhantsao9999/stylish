var express = require("express");
var mysql = require('mysql');
var multer = require('multer');
const router = express.Router();
var app = express();

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
    const path = "\"" + file[0].path + "\"";
    console.log(ID);
    console.log(Story);
    // var paths = "";
    // for (var i = 0; i < file.length; i++) {
    //     paths += "\"" + file[i].path + "\"";
    //     if (i != file["files"].length - 1) {
    //         paths += ",";
    //     }
    console.log(path);
    // };

    //插入資料進myssql
    var mysql = "INSERT INTO campaign (product_id,picture,story) Values('" + ID + "','" + path + "','" + Story + "');";
    con.query(mysql, function(err, result) {
        if (err) throw err
        console.log('successful1')

        res.send('successful');

    });

});

//從mysql獲取campaign資料
router.get("/api/1.0/marketing/campaigns", function(req, res) {
    var mysql_campaigns = "SELECT * from campaign"
    con.query(mysql_campaigns, function(err, result) {
        if (err) throw err
        var campaigns = result;
        res.json(campaigns);
    })
});

module.exports = router;