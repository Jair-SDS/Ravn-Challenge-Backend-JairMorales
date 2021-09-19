import { Sequelize }   from "sequelize";
import dotenv from 'dotenv'
dotenv.config();

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USERNAME, process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: 'postgres',
    port: process.env.DB_PORT,
    define: {
        timestamps: false
    }
});


const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;


//Models/tables
import author_model from "../models/authors.js";
db.authors = author_model(sequelize);

import books_model from "../models/books.js";
db.books = books_model(sequelize);

import sale_items_model from "../models/sale_items.js";
db.sale_items = sale_items_model(sequelize);


//Realtions
db.books.hasMany(db.sale_items,{
    foreignKey: 'book_id'
});
db.sale_items.belongsTo(db.books,{
    foreignKey: 'book_id'
});

db.authors.hasMany(db.books,{
    foreignKey: 'author_id'
});
db.books.belongsTo(db.authors,{
   foreignKey: 'author_id'
});



export default db;