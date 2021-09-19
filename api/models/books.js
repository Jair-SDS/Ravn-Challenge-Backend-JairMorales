//MODEL of books TABLE

export default function(sequelize){
    const Books = sequelize.define('books',{
        id: {
            type: 'INTEGER',
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        author_id: {
            type: 'INTEGER'        
        },
        isbn : {
            type: 'TEXT'
        }
    });

    return Books;
};