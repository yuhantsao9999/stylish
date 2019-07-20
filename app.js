const express = require('express')
const app = express()

//可以使用名為public資料夾底下的資料
app.use(express.static('public'));




//使用router資料夾下的product
const product = require('./routes/product');
app.use('/', product);

//使用router資料夾下的product_list
const product_list = require('./routes/product_list');
app.use('/', product_list);


//使用router資料夾下的Campigns
const product_search = require('./routes/product_search');
app.use('/', product_search);


//使用router資料夾下的Campigns
const product_detail = require('./routes/product_detail');
app.use('/', product_detail);



//使用router資料夾下的Campigns
const Campaigns = require('./routes/Campaigns');
app.use('/', Campaigns);




app.get('/', (req, res) => {
    res.send('HEY!')
})

app.listen(8080, () => console.log('伺服器已經啟動在http://localhost:8080/'))