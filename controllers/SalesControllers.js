const db = require('../database')
const { generateQuery, asyncQuery } = require('../helpers/queryHelp')

module.exports = {


    getClient: async (req, res) => {
        try {
            const result = await asyncQuery(`SELECT * FROM client`)
            res.status(200).send(result)
        }
        catch (err) {
            console.log(err)
            res.status(400).send(err)
        }
    },

    addClient: async (req, res) => {
        try {
            const ADD_CLIENT = `INSERT INTO client SET${generateQuery(req.body)}`
           
            const CLIENT = await asyncQuery(ADD_CLIENT)

           
            res.status(200).send({ id: CLIENT.insertId, ...req.body })
          
        } catch (error) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    editClient: async (req, res) => {

        const STATUS = parseInt(req.params.status)
        try {
        

            const UPDATE_CLIENT = `UPDATE client SET = ${db.escape(req.body)} WHERE id = ${ID}`
            await asyncQuery(UPDATE_CLIENT)

            // send request to client side
            res.status(200).send({ status: STATUS, message: `client with id: ${req.body.id} has been UPDATE.` })
        } catch (error) {
            console.log(err)
            res.status(400).send(err)
        }
    },
    deleteClient : async (req, res) => {
        const STATUS = parseInt(req.params.status)
        try{
            const DELETE = `delete from client where id_users = ${req.params.id} `
            await asyncQuery(DELETE)


            res.status(200).send({status: STATUS, message:`client with id: ${req.body.id} has been DELETE.`})

        }
        catch (error) {
            console.log(err)
            res.status(400).send(err)
        }
       

    }
}