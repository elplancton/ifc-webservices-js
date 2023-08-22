import { Router } from "express";
import { DatabaseInstance } from "../database";

export const ProfessorRouter = Router();

ProfessorRouter.get('/', (req, res) => {
    DatabaseInstance.query`SELECT * FROM professor`.then(result => res.json(result)).catch(err => res.json(err));
})