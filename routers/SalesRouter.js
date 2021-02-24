const router = require('express').Router()

const { SalesController } = require('../controllers')

// import helpers
const { verifyToken } = require('../helpers/jwt')

// create router
router.get('/get/client/:id_sales', SalesController.getClient)
router.post('/add/client', SalesController.addClient)
router.patch('/edit/client/:id_client', SalesController.editClient)
router.patch('/delete/client/:id_client', SalesController.deleteClient)

module.exports = router