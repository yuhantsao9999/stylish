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
    console.log("Mysql Connect product search");
});

// search api and add data in mysql
router.get("/api/1.0/products/search", function(req, res) {
    var keyword = req.query.keyword;
    var page = Number(req.query.paging);
    if (page == undefined) {
        page = 0;
    }
    var mysql = "SELECT * from product WHERE title LIKE '%" + keyword + "%'";
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        // console.log(data);
        var search_id = [];
        var array = [];
        var variant = [];
        var variants = [];
        var colors = [];
        var test = {}; //創造test為一個物件
        for (let i = 0; i < data.length; i++) {
            search_id.push("'" + data[i].id + "'");
        }
        var mysql2 = "SELECT * from colortest WHERE id IN (" + search_id.join(',') + ")"
        var mysql3 = "SELECT * from variant WHERE id IN (" + search_id.join(',') + ")"
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colorstest = result2;
            console.log(colorstest)
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                console.log(variant);
                for (let i = 0; i < data.length; i++) {
                    var sizes = data[i].sizes.split(",");
                    colors.push({ code: colorstest[i].code, name: colorstest[i].name });
                    variants.push({ color_code: variant[i].color_code, size: variant[i].size, stock: variant[i].stock });
                    array.push({ id: data[i].id, title: data[i].title, descriptopn: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors: colors, sizes: sizes, variants: variants, main_image: data[i].main_image, images: data[i].images })
                };
                if (page + 1 < (data.length / 3)) {
                    test['Data'] = array;
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                } //date跟paging是test的成員
                res.json(test);
            })
        })

    });
});
module.exports = router;


