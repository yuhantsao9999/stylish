
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
    console.log("Mysql Connect product detail");
});

// detail api and add data in mysql
router.get("/api/1.0/products/details", function(req, res) {
    var details = req.query.id;
    // var page = Number(req.query.paging);
    // if (page == undefined) {
    //     page = 0;
    // }
    var mysql = "SELECT * from product WHERE id ='" + details + "';"
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        if (data.length == 0)
            res.send("Error id");
        // console.log(data);
        // var search_id = [];
        var array = [];
        var variant = [];
        var variants = [];
        var colors = [];
        var test = {}; //創造test為一個物件
        // for (let i = 0; i < data.length; i++) {
        //     search_id.push("'" + data[i].id + "'");
        // }
        var mysql2 = "SELECT * from colortest WHERE id ='" + details + "';"
        var mysql3 = "SELECT * from variant WHERE id ='" + details + "';"
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colorstest = result2;
            console.log(data[0])
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                console.log(variant);
                // for (let i = 0; i < data.length; i++) {
                var sizes = data[0].sizes.split(",");
                colors.push({ code: colorstest[0].code, name: colorstest[0].name });
                variants.push({ color_code: variant[0].color_code, size: variant[0].size, stock: variant[0].stock });
                array.push({ id: data[0].id, title: data[0].title, descriptopn: data[0].description, price: data[0].price, texture: data[0].texture, wash: data[0].wash, place: data[0].place, note: data[0].note, story: data[0].story, colors: colors, sizes: sizes, variants: variants, main_image: data[0].main_image, images: data[0].images })
                    // };
                    // if (page + 1 < (data.length / 3)) {
                test['Data'] = array;
                // test['Paging'] = Number(page) + 1;
                // } else {
                // test['Data'] = array;
                // } //date跟paging是test的成員
                res.json(test);
            })
        })

    });
});

module.exports = router;