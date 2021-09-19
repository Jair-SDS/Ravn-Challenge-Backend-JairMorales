//MODEL of authors TABLE

export default function(sequelize){
    const Author = sequelize.define('author',{
        id: {
            type: 'INTEGER',
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        name: {
            type: 'TEXT'        
        },
        date_of_birth: {
            type: 'TIMESTAMP'
        }
    });
    return Author;
};