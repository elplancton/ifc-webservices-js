import express from 'express';
import { config } from "dotenv";
import { DatabaseInstance } from './database';
import { StudentRouter } from './routers/student';
import { ProfessorRouter } from './routers/professor';
config();

const app = express();

app.use('/api/databases', (req, res) => {
    DatabaseInstance.query`SHOW TABLES;`.then(result => res.json(result))
})

app.use('/api/students', StudentRouter);

app.use('/api/professors', ProfessorRouter);


app.listen(8080, () => {
    console.log(`Servidor iniciado na porta 8080`)
});