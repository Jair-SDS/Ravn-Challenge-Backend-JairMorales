import db from '../config/db.config.js';
import books from '../models/books.js';

export function get_ten_first(req, res) {
    let count = (req.query.count === undefined) ? 10 : req.query.count;
 
    db.sale_items.findAll({
        
        attributes: [[db.sequelize.fn('sum', db.sequelize.col('sale_items.item_price')),'total_amount']],
        //attributes: ['authors.id','authors.name','sale_items.item_price'],

        include: [
            {
                model: db.books,
                attributes:[],
                required: true,
                include: [
                    {
                        model: db.authors,
                        attributes: ['id','name'],
                        required: true
                    }  
                ]
            }
        ],
        
        group: [db.sequelize.col('book->author.id')],
        order: [[db.sequelize.fn('sum', db.sequelize.col('sale_items.item_price')),'DESC']],
        raw: true,
        nest: true,
        limit: count

    }).then(sale_items => {
        console.log(sale_items);;
        res.json(sale_items);
    }).catch(error => {
        console.log(error);
        res.json(error);
    });

}
