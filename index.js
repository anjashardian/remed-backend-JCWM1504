const express = require('express')
const cors = require('cors')
const bodyparser = require('body-parser')

// main app
const app = express()

// apply middleware
app.use(cors())
app.use(bodyparser.json())

// main route
const response = (req, res) => res.status(200).send('<h1>REST API JCWM1504</h1>')
app.get('/', response)

// use router
const { SalesRouter, AdminRouter } = require('./routers')
app.use('/sales', SalesRouter)
app.use('/admin', AdminRouter)

// bind to local machine
const PORT = process.env.PORT || 2000
app.listen(PORT, () => console.log(`CONNECTED : port ${PORT}`))

