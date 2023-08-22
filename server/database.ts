import { config } from "dotenv";
import { Connection, createConnection } from "mariadb";
config();


export class Database {
    private readonly connection!: Promise<Connection>;

    constructor() {
        this.connection = createConnection({ host: process.env.DATABASE_HOST, user: process.env.DATABASE_USER, password: process.env.DATABASE_PASS, database: process.env.DATABASE_NAME });
    }


    async query(query: TemplateStringsArray, ...params: Array<any>) {
        return this.connection.then(conn => conn.query(query.join('?'), params))
    }
}


export const DatabaseInstance = new Database();