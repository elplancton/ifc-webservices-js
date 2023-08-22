import { Router } from "express";
import { DatabaseInstance } from "../database";

export const StudentRouter = Router();

StudentRouter.get('/', (req, res) => {
    DatabaseInstance.query`SELECT * FROM estudante`.then(result => res.json(result)).catch(err => res.json(err));
})