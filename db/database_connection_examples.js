/*
    You will need to run:
    npm install express --save
    npm install mysql
 */
const express = require('express'); //required to use express
const mysql = require('mysql'); //required to use mysql for express

//this is how you create the connection to you database

/*
    First, you will need to create your local db. Open a terminal and do the following:
    mysql -u root -p
    (enter your admin password)

    GRANT ALL PRIVILEGES ON *.* TO 'growinggardens'@'localhost' IDENTIFIED BY 'growinggardens';

    create database growing_gardens;

    now run the db script to create the tables.
 */
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'growinggardens',
    password : 'growinggardens',
    database : 'growing_gardens'
});


//must always do this before any command you want in the db
connection.connect();

//query can be used for selecting, inserting, etc. basically anything you would normally do with a db
//ex. select statement:
connection.query('select * from test_table', function (err, results, fields) {
    if (err)  {
        console.log("error: " + err);
    }  else  {
        console.log("no error");
        results.forEach(function(value){
            console.log(value.name);
            toDoList.push(value.name);
        });
        console.log("toDoList: " + toDoList);
        res.send({ toDoList });
    }
});

//ex. insert statement
connection.query('INSERT INTO test_table (name, age) VALUES (\'Team 10\', \'1\')', function (err, results, fields) {
    if (err) throw err;
});

//this closes the connection and should be the last thing you do with the query result.
connection.end();