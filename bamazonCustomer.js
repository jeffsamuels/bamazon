var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    // Your port; if not 3306
    port: 8889,

    // Your username
    user: "root",

    // Your password
    password: "root",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    start();
});

function start() {
    console.log("******************************************\n");
    console.log("Welcome to Bamazon! Here are our products:\n");
    console.log("******************************************\n");
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        // Log all results of the SELECT statement
        console.log(res);

        inquirer
            .prompt([
                {
                    name: "productSelection",
                    type: "list",
                    message: "Which product would you like to purchase?",
                    choices: [101, 201, 301, 401, 501, 601, 701, 801, 901, 999]
                },
                {
                    name: "productQuantity",
                    type: "integer",
                    message: "How many would you like to purchase?",
                }])

            .then(function (answer) {
                var query = connection.query("SELECT * FROM products WHERE item_id=?", [answer.productSelection], function (err, stock_quantity) {

// Couldn't get the database to actually update here.
// If and Else statement didn't function properly either.

                    if (answer.productQuantity <= stock_quantity) {
                        function updateProduct() {
                            var query = connection.query(
                                "UPDATE products SET ? WHERE ?",
                                [
                                    {
                                        stock_quantity: ([stock_quantity] - [answer.productSelection]),
                                    },
                                    {
                                        item_id: [answer.productSelection],
                                    },
                                ],

                            )
                        }
                        console.log("You have been charged " + [(answer.productQuantity) * (query.price)] + "dollars!")
                    }
                    else () => {
                        console.log("Insufficient quantity available!")
                    }
                    connection.end()
                }
                )
            })
    }
    )
}
