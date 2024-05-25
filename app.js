const port = 3000;
 const express = require('express');
 const app = express();
 app.listen(port, () => {
    console.log('listening on port 3000')
 })
 app.get('/', (req, res) => {
    res.write('Hello docker.js')
 })
