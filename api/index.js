import express from 'express';
import db from './config/db.config.js';
import rootRouter from './routes/root.js';
import homeRouter from './routes/home.js';

//Create server with express framework 
const app = express();
const port = process.env.PORT;

//JSON render
app.use(express.urlencoded({extended: true}));
app.use(express.json());

//Routing management
app.use('/', rootRouter);
app.use('/home', homeRouter);

//Page Not Found 
app.use(function(req, res, next) {
    res.status(404);
    if (req.accepts('json')) {
      res.json({ error: 'Not found' });
      return;
    }
});


//Server up in the port from .env
app.listen(port, () => {
    console.log(`Server Up on Port ${port}`);
    db.sequelize.authenticate().then(() => {
        console.log("Conectado a DB");
    }).catch(error => {
        console.log("Error:",error);
    })
});

