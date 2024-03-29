var express = require("express");
var con = require("../module/db.js");
const router = express.Router();
var app = express();
const NodeCache = require("node-cache");
const Cache = new NodeCache({ stdTTL: 100, checkperiod: 120 });

// 從根目錄使用router
app.use('/', router);

// detail api and add data in mysql
router.get("/api/1.0/products/details", function(req, res) {
    var details = req.query.id;
    Cache.get(`"detail${details}"`, function(err, value) {
        if (!err) {
            if (value == undefined) {
                var mysql = "SELECT * from product WHERE id ='" + details + "';"
                con.query(mysql, function(err, result1) {
                    if (err) throw err
                    var data = result1;
                    if (data.length == 0)
                        res.send("Error id");

                    var array = [];
                    var variant = [];
                    var variants = [];
                    var colors = [];
                    var test = {}; //創造test為一個物件

                    var mysql2 = "SELECT * from colortest WHERE id ='" + details + "';"
                    var mysql3 = "SELECT * from variant WHERE id ='" + details + "';"
                    con.query(mysql2, function(err, result2) {
                        if (err) throw err
                        var colorstest = result2;
                        // console.log(data[0])
                        con.query(mysql3, function(err, result3) {
                            if (err) throw err
                            var variant = result3;
                            // console.log(variant);
                            var sizes = data[0].sizes.split(",");
                            colors.push({ code: colorstest[0].code, name: colorstest[0].name });
                            variants.push({ color_code: variant[0].color_code, size: variant[0].size, stock: variant[0].stock });
                            array.push({ id: data[0].id, title: data[0].title, descriptopn: data[0].description, price: data[0].price, texture: data[0].texture, wash: data[0].wash, place: data[0].place, note: data[0].note, story: data[0].story, colors: colors, sizes: sizes, variants: variants, main_image: data[0].main_image, images: data[0].images })
                            test['Data'] = array;
                            // res.json(test);

                            console.log("this is cache" + JSON.stringify(test));
                            // res.json(obj);
                            Cache.set(`"detail${details}"`, test, function(err, success) {
                                if (!err && success) {
                                    console.log("final" + "" + success);
                                    // true
                                    console.log('succeddful')

                                    console.log('succeddful2')
                                        // ... do something ...
                                }
                            });
                            res.json(test);
                        })
                    })

                });

            } else {
                console.log("this is value" + JSON.stringify(value));
                // res.json(JSON.stringify(value))
                // ... do something ...
                res.json(value);
            }
        }
    });



});

module.exports = router;