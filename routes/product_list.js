var express = require("express");
var con = require("../module/db.js");
const router = express.Router();
var app = express();

// 從根目錄使用router
app.use('/', router);


// products api for all
router.get("/api/1.0/products/all", function(req, res) {
    var page = req.query.paging;
    if (page == undefined) {
        page = 0;
    }
    res.set("Access-Control-Allow-Origin", "*"); //可被任何人存取
    res.set("Access-Control-Allow-Headers", "Origin, Content-Type, Accept, Authorization"); //標頭檔
    res.set("Access-Control-Allow-Methods", "POST, GET, OPTIONS"); //用了哪些方式
    res.set("Access-Control-Allow-Credentials", "true");
    page = Number(page)

    var mysql = "SELECT id,title,description,price,texture,wash,place,note,story,sizes,main_image,images from product"
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        if (page >= data.length / 3) { //照理說要page-1，但是page從0開始所以+1
            res.send("Error page")
            return;
        }
        var array = [];
        var test = {}; //創造test為一個物件
        var id = []
        for (var i = 0; i < data.length; i++) {
            id.push("'" + data[i].id + "'")
        }
        // console.log(id.join())
        var mysql2 = "SELECT code,name,id from colortest";
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            var color_obj = []
                // console.log(result2)
            for (let k = 0; k < data.length; k++) {
                // console.log("k : " + k)
                color_obj[k] = []
                for (let j = 0; j < colors.length; j++) {
                    // console.log("j : " + j)
                    if (data[k].id == colors[j].id) {
                        var tmp = {}
                        tmp.code = colors[j].code
                        tmp.name = colors[j].name
                            // console.log(tmp)
                        color_obj[k].push(tmp)
                    }
                }
            }
            // console.log(color_obj)
            var mysql3 = "SELECT color_code,size,stock,id FROM variant"
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                var variant_obj = [];
                // console.log(result2)
                for (let k = 0; k < data.length; k++) {
                    // console.log("k : " + k)
                    variant_obj[k] = []
                    for (let j = 0; j < variant.length; j++) {
                        // console.log("j : " + j)
                        if (data[k].id == variant[j].id) {
                            var tmp = {}
                            tmp.color_code = variant[j].color_code
                            tmp.size = variant[j].size
                            tmp.stock = variant[j].stock
                                // console.log(tmp)
                            variant_obj[k].push(tmp)
                        }
                    }
                }
                // console.log(variant_obj)
                for (i = 6 * page; i < 6 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    // console.log(data[i].sizes);
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors: color_obj[i], sizes: sizes, variants: variant_obj[i], main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 6)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.send(test);

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
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        if (page >= data.length / 6) { //照理說要page-1，但是page從0開始所以+1
            res.send("Error page")
            return;
        }
        var array = [];
        var test = {}; //創造test為一個物件
        var id = []
        for (var i = 0; i < data.length; i++) {
            id.push("'" + data[i].id + "'")
        }
        var mysql2 = "SELECT code,name,id from colortest";
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            var color_obj = []
            for (let k = 0; k < data.length; k++) {
                color_obj[k] = []
                for (let j = 0; j < colors.length; j++) {
                    if (data[k].id == colors[j].id) {
                        var tmp = {}
                        tmp.code = colors[j].code
                        tmp.name = colors[j].name
                        color_obj[k].push(tmp)
                    }
                }
            }
            var mysql3 = "SELECT color_code,size,stock,id FROM variant"
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                var variant_obj = [];
                for (let k = 0; k < data.length; k++) {
                    variant_obj[k] = []
                    for (let j = 0; j < variant.length; j++) {
                        if (data[k].id == variant[j].id) {
                            var tmp = {}
                            tmp.color_code = variant[j].color_code
                            tmp.size = variant[j].size
                            tmp.stock = variant[j].stock
                            variant_obj[k].push(tmp)
                        }
                    }
                }
                for (i = 6 * page; i < 6 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors: color_obj[i], sizes: sizes, variants: variant_obj[i], main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 6)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.send(test);

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
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        if (page >= data.length / 6) { //照理說要page-1，但是page從0開始所以+1
            res.send("Error page")
            return;
        }
        var array = [];
        var test = {}; //創造test為一個物件
        var id = []
        for (var i = 0; i < data.length; i++) {
            id.push("'" + data[i].id + "'")
        }
        var mysql2 = "SELECT code,name,id from colortest";
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            var color_obj = []
            for (let k = 0; k < data.length; k++) {
                color_obj[k] = []
                for (let j = 0; j < colors.length; j++) {
                    if (data[k].id == colors[j].id) {
                        var tmp = {}
                        tmp.code = colors[j].code
                        tmp.name = colors[j].name
                        color_obj[k].push(tmp)
                    }
                }
            }
            var mysql3 = "SELECT color_code,size,stock,id FROM variant"
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                var variant_obj = [];
                for (let k = 0; k < data.length; k++) {
                    variant_obj[k] = []
                    for (let j = 0; j < variant.length; j++) {
                        if (data[k].id == variant[j].id) {
                            var tmp = {}
                            tmp.color_code = variant[j].color_code
                            tmp.size = variant[j].size
                            tmp.stock = variant[j].stock
                            variant_obj[k].push(tmp)
                        }
                    }
                }
                for (i = 6 * page; i < 6 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors: color_obj[i], sizes: sizes, variants: variant_obj[i], main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 6)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.send(test);
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
    con.query(mysql, function(err, result1) {
        if (err) throw err
        var data = result1;
        if (page >= data.length / 6) { //照理說要page-1，但是page從0開始所以+1
            res.send("Error page")
            return;
        }
        var array = [];
        var test = {}; //創造test為一個物件
        var id = []
        for (var i = 0; i < data.length; i++) {
            id.push("'" + data[i].id + "'")
        }
        var mysql2 = "SELECT code,name,id from colortest";
        con.query(mysql2, function(err, result2) {
            if (err) throw err
            var colors = result2;
            var color_obj = []
            for (let k = 0; k < data.length; k++) {
                color_obj[k] = []
                for (let j = 0; j < colors.length; j++) {
                    if (data[k].id == colors[j].id) {
                        var tmp = {}
                        tmp.code = colors[j].code
                        tmp.name = colors[j].name
                        color_obj[k].push(tmp)
                    }
                }
            }
            var mysql3 = "SELECT color_code,size,stock,id FROM variant"
            con.query(mysql3, function(err, result3) {
                if (err) throw err
                var variant = result3;
                var variant_obj = [];
                for (let k = 0; k < data.length; k++) {
                    variant_obj[k] = []
                    for (let j = 0; j < variant.length; j++) {
                        if (data[k].id == variant[j].id) {
                            var tmp = {}
                            tmp.color_code = variant[j].color_code
                            tmp.size = variant[j].size
                            tmp.stock = variant[j].stock
                            variant_obj[k].push(tmp)
                        }
                    }
                }
                for (i = 6 * page; i < 6 * (page + 1); i++) {
                    if (i == result1.length) {
                        break;
                        //當i等於result回來的長度時，迴圈結束
                    }
                    var sizes = data[i].sizes.split(",");
                    array.push({ id: data[i].id, title: data[i].title, description: data[i].description, price: data[i].price, texture: data[i].texture, wash: data[i].wash, place: data[i].place, note: data[i].note, story: data[i].story, colors: color_obj[i], sizes: sizes, variants: variant_obj[i], main_image: data[i].main_image, images: [data[i].images] });
                }
                if (page + 1 < (result1.length / 6)) {
                    test['Data'] = array; //date跟paging是test的成員
                    test['Paging'] = Number(page) + 1;
                } else {
                    test['Data'] = array;
                }
                res.send(test);
            });
        });
    });
});

module.exports = router;