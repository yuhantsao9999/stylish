var express = require("express");
var mysql = require('mysql');
var multer = require('multer');
const router = express.Router();
var app = express();

// 從根目錄使用router
app.use('/', router);

// GET product.html
router.get('/', (req, res) => {
    res.send('product');
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
    console.log("Mysql Connect product");
});

//使用multer將檔案campaigns/傳到並幫檔案命名
var storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'uploads/porfuct_list_uploads')
    },
    filename: function(req, file, cb) {
        cb(null, file.fieldname + '-' + Date.now() + ".jpg")
    },
})
var upload = multer({ storage: storage })

//使前端提交請求給後端
var mixupload = upload.fields([{ name: 'main_image', maxCount: 1 }, { name: 'images', maxCount: 4 }]);
router.post('/product', mixupload, function(req, res, next) {
    var ID = req.body.id;
    var Title = req.body.title;
    var Description = req.body.description;
    var Price = req.body.price;
    var Texture = req.body.texture;
    var Wash = req.body.wash;
    var Place = req.body.place;
    var Note = req.body.note;
    var Story = req.body.story;
    var Colors_code = req.body.colors_code;
    var Colors_name = req.body.colors_name;
    // INSERT INTO product (ID,title,Colors,Variants) Values(1,1,'"{code:123,name:asd}"','"{code:123,name:asd}"');
    // var Colors = "{\"code\":" + Colors_code + ",\"name\":" + Colors_name + "}";
    var Sizes_s = req.body.sizes_S;
    var Sizes_m = req.body.sizes_M;
    var Sizes_l = req.body.sizes_L;
    var Sizes = Sizes_s + "," + Sizes_m + "," + Sizes_l;
    var Variants_color_code = req.body.variants_color_code;
    var Variants_size = req.body.variants_size;
    var Variants_stock = req.body.variants_stock;
    // var Variants = "{\"color_code\":" + Variants_color_code + ",\"size\":" + Variants_size + ",\"stock\":" + Variants_stock + "}";
    var Category = req.body.category;
    const file = req.files;
    const path = "\"" + file["main_image"][0].path + "\"";

    var paths = "";

    for (var i = 0; i < file["images"].length; i++) {
        paths += "\"" + file["images"][i].path + "\"";
        if (i != file["images"].length - 1) {
            paths += ",";
        }
    };
    console.log(paths);
    // const paths = req.file.main_image.path;
    // if (!req.files) {
    //     const error = new Error('Please upload a file')
    //     error.httpStatusCode = 400
    //     return next(error)
    // }
    res.send('successful');
    console.log("this is ID:" + ID);
    console.log("this is ID:" + Category);
    //插入資料進myssql
    var mysql = "INSERT INTO product (ID,Title,Description,Price,Texture,Wash,Place,Note,Story,Sizes,main_image,images,category) Values('" + ID + "','" + Title + "','" + Description + "','" + Price + "','" + Texture + "','" + Wash + "','" + Place + "','" + Note + "','" + Story + "','" + Sizes + "','" + path + "','" + paths + "','" + Category + "')";
    var mysql2 = "INSERT INTO colortest (ID,code,name) Values('" + ID + "','" + Colors_code + "','" + Colors_name + "')";
    var mysql3 = "INSERT INTO variant (ID,color_code,size,stock) Values('" + ID + "','" + Variants_color_code + "','" + Variants_size + "','" + Variants_stock + "' )";
    con.query(mysql, function(err, result) {
        if (err) throw err
        console.log('successful1')
    });
    con.query(mysql2, function(err, result) {
        if (err) throw err
        console.log('successful2')
    });
    con.query(mysql3, function(err, result) {
        if (err) throw err
        console.log('successful3')
    });
});

module.exports = router;