

// simple microservice. 

'use strict';
const express = require('express');
const fetch = require('node-fetch');
 const bodyParser = require('body-parser')

// Constants
const PORT = 3001;
const HOST = '0.0.0.0';
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
  res.write(dateIPStamp({ "action":"GET" }, req.ip));
  res.status(200).end();
  console.log('Console: Server returned success on get.')
});

app.post('/', (req, res) => {
  let recd = req.body;
  recd.action = "POST";
  res.write(dateIPStamp(recd), req.ip); //
  res.status(200).end();
  console.log('Console: server returned success on post.')
});


app.listen(PORT, HOST);

console.log(`Running on ${PORT}`);

// test a simple self-get

console.log('Console: request is testing a simple self-get')

fetch('http://localhost:3001')
  .then(response => response.json())
  .then(data => console.log(data));

// test a simple self-post
console.log('Console: request is testing a simple self-post')

const url ='http://localhost:3001';
const headers = {
  "Content-Type": "application/json"
};
const data = JSON.stringify({
  "firstName": "myFirstName",
  "lastName": "myLastName"
});

fetch(url, { method: 'POST', headers: headers, body: data})
  .then((res) => {
     return res.json()
})
.then((json) => {
   // Do something with the returned data.
  console.log(json);

});




function dateIPStamp(recdJSON, someIP) {
  recdJSON.ip = someIP;
  let now = new Date();
  recdJSON.date = now;
  let returnJSON = JSON.stringify(recdJSON);
  //console.log('testFunc reached' + returnJSON);
  return(returnJSON);
  
};
