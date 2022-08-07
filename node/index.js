const express = require('express');
const app = express();

const PORT = process.env.PORT;
const NODE_ENV = process.env.NODE_ENV;
const IS_PRODUCTION = NODE_ENV === 'production';

app.get("/", (req, res) => {
    IS_PRODUCTION ? res.send(`this is ${NODE_ENV}`) : res.send(`this is ${NODE_ENV} kk`);
})

app.listen(PORT, () => {
    console.log(`server start : http://localhost:${PORT}`)
})