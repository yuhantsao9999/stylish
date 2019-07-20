var express = require("express");
var mysql = require("mysql");
const router = express.Router();
var app = express();

// 從根目錄使用router
app.use('/', router);

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
    console.log("Mysql Connect productlist");
});


// products api for all
router.get("/api/1.0/products/all", function(req, res) {
    var page = req.query.paging;
    if (page == undefined) {
        page = 0;
    }
    page = Number(page)
    var mysql = "SELECT id,title,description,price,texture,wash,place,note,story,sizes,main_image,images from product"
    var mysql2 = "SELECT code,name from colortest,product where product.id=colortest.id"
    var mysql3 = "SELECT color_code,size,stock FROM variant,product WHERE product.id=variant.id "
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        var array = [];
        var test = {}; //創造test為一個物件
        // for (i = 0; i < data.length; i++) {
        //     sizes.push(data[i].Sizes_s, data[i].Sizes_m, data[i].Sizes_l);
        // }
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                for (i = 3 * page; i < 3 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    console.log(data[i].sizes);
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors, sizes: sizes, variant, main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 3)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.json(test);
            });
        });
    });
});

// products api for women
router.get("/api/1.0/products/women", function(req, res) {
    var page = req.query.paging;
    if (page == undefined) {
        page = 0;
    }
    page = Number(page)
    var mysql = "SELECT id,title,description,price,texture,wash,place,note,story,sizes,main_image,images from product where product.category = 'women'"
    var mysql2 = "SELECT code,name from colortest,product where ( product.id=colortest.id and product.category = 'women')"
    var mysql3 = "SELECT color_code,size,stock FROM variant,product WHERE (product.id=variant.id and product.category = 'women')"
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        var array = [];
        var test = {}; //創造test為一個物件
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                for (i = 3 * page; i < 3 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    console.log(data[i].sizes);
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors, sizes: sizes, variant, main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 3)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.json(test);
            });
        });
    });
});

// products api for men
router.get("/api/1.0/products/men", function(req, res) {
    var page = req.query.paging;
    if (page == undefined) {
        page = 0;
    }
    page = Number(page)
    var mysql = "SELECT id,title,description,price,texture,wash,place,note,story,sizes,main_image,images from product where product.category = 'men'"
    var mysql2 = "SELECT code,name from colortest,product where ( product.id=colortest.id and product.category = 'men')"
    var mysql3 = "SELECT color_code,size,stock FROM variant,product WHERE (product.id=variant.id and product.category = 'men')"
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        var array = [];
        var test = {}; //創造test為一個物件
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                for (i = 3 * page; i < 3 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    console.log(data[i].sizes);
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors, sizes: sizes, variant, main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 3)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.json(test);
            });
        });
    });
});

// products api for accessories
router.get("/api/1.0/products/accessories", function(req, res) {
    var page = req.query.paging;
    if (page == undefined) {
        page = 0;
    }
    page = Number(page)
    var mysql = "SELECT id,title,description,price,texture,wash,place,note,story,sizes,main_image,images from product where product.category = 'accessories'"
    var mysql2 = "SELECT code,name from colortest,product where ( product.id=colortest.id and product.category = 'accessories')"
    var mysql3 = "SELECT color_code,size,stock FROM variant,product WHERE (product.id=variant.id and product.category = 'accessories')"
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        var array = [];
        var test = {}; //創造test為一個物件
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                for (i = 3 * page; i < 3 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors, sizes: sizes, variant, main_image: data[i].main_image, images: [data[i].images] });
                }
                // console.log(array)
                if (page + 1 < (result1.length / 3)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }

                res.json(test);
            });
        });
    });
});

module.exports = router;