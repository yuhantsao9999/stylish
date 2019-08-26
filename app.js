const express = require('express')
const app = express()

//可以使用名為public資料夾底下的資料
app.use(express.static('public'));

//可以使用名為uploads資料夾底下的資料
app.use(express.static('uploads'));


//使用router資料夾下的product
const product = require('./routes/product');
app.use('/', product);

//使用router資料夾下的product_list
const product_list = require('./routes/product_list');
app.use('/', product_list);


//使用router資料夾下的product_search
const product_search = require('./routes/product_search');
app.use('/', product_search);


//使用router資料夾下的product_detail
const product_detail = require('./routes/product_detail');
app.use('/', product_detail);

//使用router資料夾下的Campigns
const Campaigns = require('./routes/Campaigns');
app.use('/', Campaigns);

//使用router資料夾下的sign_api
const sign = require('./routes/sign_api');
app.use('/', sign);

// 使用router資料夾下的checkout
const checkout = require('./routes/checkout');
app.use('/', checkout);


app.get('/', (req, res) => {
    res.send('HEY!')
})

app.listen(3000), () => console.log('伺服器已經啟動在http://localhost:3000/')

