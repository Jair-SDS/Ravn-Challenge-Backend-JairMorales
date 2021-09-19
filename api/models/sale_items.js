
export default function(sequelize){
    const Sale_items = sequelize.define('sale_items',{
        id: {
            type: 'INTEGER',
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        book_id: {
            type: 'INTEGER'        
        },
        item_price: {
            type: 'MONEY'
        }
    });

    return Sale_items;
};