import db from '../config/db.config.js';
import books from '../models/books.js';


//API get top {count} performing authors, ranked by sales revenue 
export function get_ten_first(req, res) {

    //Read the count number coming from the GET method 
    let count = (req.query.count === undefined) ? 10 : req.query.count;
 
    //Query SELECT
    db.sale_items.findAll({
        
        //Column sum("sale_items"."item_price") as "total_amount"
        attributes: [[db.sequelize.fn('sum', db.sequelize.col('sale_items.item_price')),'total_amount']],
        
        //JOINs
        include: [
            {
                model: db.books,
                attributes:[],
                required: true,
                include: [
                    {
                        model: db.authors,
                        //Columns 'id'& 'name'
                        attributes: ['id','name'],
                        required: true
                    }  
                ]
            }
        ],
        
        //GROUP BY 'authors.id'
        group: [db.sequelize.col('book->author.id')],
        //ORDER BY 'total_amount'
        order: [[db.sequelize.fn('sum', db.sequelize.col('sale_items.item_price')),'DESC']],
        
        raw: true,
        nest: true,
        
        //LIMIT ${count}
        limit: count

    // API response
    }).then(sale_items => {
        //console.log(sale_items);;
        res.json(sale_items);
    //Error response
    }).catch(error => {
        console.log(error);
        res.json(error);
    });

}
