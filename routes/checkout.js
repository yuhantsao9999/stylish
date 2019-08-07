var express = require("express");
var con = require('../module/db');
var app = express();
const router = express.Router();
var request = require('request');
var bodyParser = require('body-parser')
const crypto = require('crypto');

router.use(bodyParser.urlencoded({ extended: true }));
router.use(bodyParser.json());

// 從根目錄使用router
app.use('/', router);

// GET Champaigns.html
router.get('/', (req, res) => {
    res.send('pay');
});

router.post('/order/checkout', function(req, res) {
    //先判斷有是否是會員(有token)，
    var Bearer_token = req.headers.authorization;
    var Bearer = Bearer_token.substr(0, 6);
    var Token = Bearer_token.substr(7);
    console.log("token : " + Token)
    var checkout = req.body
    var { prime } = req.body.checkout
    var { shipping, payment, subtotal, freight, total } = req.body.checkout.order
    var { name, phone, email, address, time } = req.body.checkout.order.recipient
    var { id, price, size, qty } = req.body.checkout.list[0]
    var color_code = req.body.checkout.list[0].color.code
    var color_name = req.body.checkout.list[0].color.name
    var response = {
        email: email,
        prime: prime,
        status: "unpaid",
        price: price,
        size: size,
        buyer: "guest",
        total: total,
        code: color_name,
        name: name,
    }

    var sql = `INSERT INTO list SET ?`
    var sql_checkmember = `SELECT email FROM user WHERE access_token='${Token}'`
    con.query(sql_checkmember, function(err, result) {
        if (err) throw err;
        if (String(result).length == 0) {
            //如果沒有token，就傳失敗訊息
            console.log('"error": "Invalid token."')
        } else { //有token是會員，提取會員email，將產品資訊存到list，
            con.query(sql, response, function(err, result) {
                if (err) throw err;
                // res.send('"error": "Invalid token."')
                var sql_request = "SELECT * from list"
                con.query(sql_request, function(err, request_result) {
                    console.log(request_result)
                    if (err) throw err;

                    var url = 'https://sandbox.tappaysdk.com/tpc/payment/pay-by-prime'
                    request({
                        url: url,
                        method: "POST",
                        json: true,
                        headers: {
                            "content-type": "application/json",
                            "x-api-key": "partner_6ID1DoDlaPrfHw6HBZsULfTYtDmWs0q0ZZGKMBpp4YICWBxgK97eK3RM",
                        },
                        body: {
                            "partner_key": "partner_PHgswvYEk4QY6oy3n8X3CwiQCVQmv91ZcFoD5VrkGFXo8N7BFiLUxzeG",
                            "prime": prime,
                            "amount": request_result[0].total,
                            "email": request_result[0].email,
                            "merchant_id": "AppWorksSchool_CTBC",
                            "details": "Some item",
                            "cardholder": {
                                "phone_number": +886923456789,
                                "name": request_result[0].name,
                                "email": request_result[0].email,
                                "zip_code": "100",
                                "address": "台北市天龍區芝麻街1號1樓",
                                "national_id": "A123456789"
                            },
                            "remember": true
                        },
                    }, function(error, response, body) {
                        console.log(body)
                        if (body.status == 0) {
                            console.log("suc")
                            var change_sql = `UPDATE list SET status='pay' WHERE prime='${prime}';`
                            var id_sql = `SELECT id FROM list WHERE prime='${prime}';`
                            con.query(change_sql, function(err, change_result) {
                                if (err) throw err;
                                con.query(id_sql, function(err, id_result) {
                                    if (err) throw err;
                                    var data = { data: { number: id_result } };
                                    res.send(data);
                                    // console.log(data)

                                })

                            })
                        } else {
                            console.log("Err : " + body.msg)
                        }
                    });
                })
            });
        }
    })
})



// //User Profile APIs
// router.get('/user/checkout', function(req, res) {
//     var Bearer_token = String(req.headers.authorization)
//     console.log("bt : " + Bearer_token)
//     var test = {};
//     var array = [];
//     var Bearer = Bearer_token.substr(0, 6);
//     var Token = Bearer_token.substr(7, Bearer_token.length - 1);
//     console.log("tokn : " + Token)
//         //取出mysql中的token
//     var mysql5 = "SELECT * from user where access_token = '" + Token + "';"
//     con.query(mysql5, function(err, result5) {
//         if (err) throw err;
//         var profile = result5;
//         console.log('token')
//         if (Bearer == 'Bearer' && profile.length != 0) {
//             array.push({
//                 id: profile[0].id,
//                 provider: profile[0].provider,
//                 name: profile[0].name,
//                 email: profile[0].email,
//                 pricture: profile[0].picture
//             });
//             console.log(array);
//             test['data'] = (array[0]);
//             res.send(test);
//         } else {
//             res.send('"error": "Invalid token."')
//         };
//     });
// });


module.exports = router