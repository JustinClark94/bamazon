var mysql = require("mysql");
var inquirer = require("inquire");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "jj3265263",
  database: "bamazon"
});
//code below fromtopSongsCode
connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

function decorSearch() {
  inquirer
    .prompt({
      name: "id",
      type: "input",
      message: "Please enter the ID of the product you would like to buy?"
    }, {
      // How many would you like?
      type: "input",
      name: "stock  quantity",
      message: "How many would you like to purchase? ",
      // validate returns truef the entry is valid, otherwise throw error
      validate: function(value) {
        if (isNaN(value) === false) {
          return true;
        }
        return false;
      }


    .then(function(answer) {
      var query = "SELECT position, song, year FROM top5000 WHERE ?";
      connection.query(query, { artist: answer.artist }, function(err, res) {
        for (var i = 0; i < res.length; i++) {
          console.log("Position: " + res[i].position + " || Song: " + res[i].song + " || Year: " + res[i].year);
        }
        runSearch();
      });
    })    });    };