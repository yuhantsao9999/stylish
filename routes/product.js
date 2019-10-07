var express = require("express");
var con = require('../module/db');
var multer = require('multer');
const router = express.Router();
var app = express();
var aws = require('aws-sdk');
var multer = require('multer');
var multerS3 = require('multer-s3');

//s3的帳號密碼
const BUCKET_NAME = '';
const IAM_USER_KEY = '';
const IAM_USER_SECRET = '';

aws.config.update({
    accessKeyId: IAM_USER_KEY,
    secretAccessKey: IAM_USER_SECRET
});
const s3 = new aws.S3();

// 從根目錄使用router
app.use('/', router);

// GET product.html
router.get('/', (req, res) => {
    res.send('product');
});


//使用multer將檔案campaigns/傳到並幫檔案命名
// var storage = multer.diskStorage({
//     destination: function(req, file, cb) {
//         cb(null, 'uploads/porfuct_list_uploads')
//     },
//     filename: function(req, file, cb) {
//         cb(null, file.fieldname + '-' + Date.now() + ".jpg")
//     },
// })
// var upload = multer({ storage: storage })


//s3取代multer
var upload = multer({
    storage: multerS3({
        s3: s3,
        bucket: 'stylish-test-1',
        metadata: function(req, file, cb) {
            cb(null, { fieldName: file.fieldname });
        },
        key: function(req, file, cb) {
            cb(null, 'porfuct_list_uploads/' + file.fieldname + '-' + Date.now() + ".jpg")
        }
    })
})

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
    var main_img_name = req.files.main_image[0].key;
    var images_name = []
    for (let i = 0; i < req.files.images.length; i++) {
        images_name.push(req.files.images[i].key);
        console.log(req.files.images[i].key)
    }
    // console.log(req.files.main_image[0].filename)


    res.send('successful');
    console.log("this is ID:" + ID);
    console.log("this is ID:" + Category);
    // 插入資料進myssql
    var mysql = "INSERT INTO product (ID,Title,Description,Price,Texture,Wash,Place,Note,Story,Sizes,main_image,images,category) Values('" + ID + "','" + Title + "','" + Description + "','" + Price + "','" + Texture + "','" + Wash + "','" + Place + "','" + Note + "','" + Story + "','" + Sizes + "','" + main_img_name + "','" + images_name + "','" + Category + "')";
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
