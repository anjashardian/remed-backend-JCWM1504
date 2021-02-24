const db = require('../database')
const { generateQuery, asyncQuery } = require('../helpers/queryHelp')


module.exports = {
    getSales :  async (req, res) => {
        
        try{

            const dataSales = `select * from
            sales_representative
            join jabatan
            on sales_representative.id_jabatan = jabatan.id
            order by id_jabatan`

            await asyncQuery(dataSales)
        }
        catch(err){
            console.log(err)
            res.status(400).send(err)
        }

    },

    getDataClientSales : async (req, res) => {
        try{
            const data = `SELECT rs.id, rs.name  , c.total_client, c.total_credit FROM sales_representative rs
            JOIN client c where count(credit) as total_credit from client and count(id) as total_client from client`

            await asyncQuery(data)


        }
        catch(err){
            console.log(err)
            res.status(400).send(err)  
        }
    }

}