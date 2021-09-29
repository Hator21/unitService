import pool from '../dbconfig/dbconnector';

class UnitController {

    public async getAllUnitData(req, res) {
        try {
            const client = await pool.connect();

            const sql = "SELECT * FROM unit";
            const { rows } = await client.query(sql);
            const todos = rows;

            client.release();

            res.send(todos);
        } catch (error) {
            res.status(500).send(error);
        }
    }

    public async getAvailableUnitData(req, res) {
        try {
            const client = await pool.connect();

            const sql = "SELECT * FROM unit WHERE available = true";
            const { rows } = await client.query(sql);
            const todos = rows;

            client.release();

            res.send(todos);
        } catch (error) {
            res.status(500).send(error);
        }
    }

    public async post(req, res) {
        try {
            const client = await pool.connect();
            const sql = "INSERT INTO public.unit(id, specialization, destination, available, start_date, end_date, unit_strength, organization) VALUES(" +
                "'" + req.body.id + "','" + req.body.specialization + "','" + req.body.destination + "'," + req.body.available + ",'" + req.body.start_date + "','" +
                req.body.end_date + "','" + req.body.unit_strength + "','" + req.body.organization +"');"

            await client.query(sql);
            res.status(200).send();
        } catch (error) {
            res.status(500).send(error);
        }

    }
}

export default UnitController;