const router = require('express').Router()

const { AdminController } = require('../controllers')

// import helpers
const { verifyToken } = require('../helpers/jwt')

// create router
router.get('/get/sales', AdminController.getSales)
router.get('/get/report', AdminController.getSales)


module.exports = router