var mysql = require("mysql");

// connect mysql
var con = mysql.createPool({
    connectionLimit: 10,
    host: "localhost",
    user: "root",
    password: "sweet840818",
    database: "stylish",
    // option
    acquireTimeout: 10000,
    waitForConnections: true,
    queueLimit: 0,
});

// con.connect(function(err) {
//     if (err) {
//         console.error(err);
//         return;
//     }
//     console.log("Mysql Connect");
// });

module.exports = con