import express from 'express';
import db from './config/db.config.js';
import rootRouter from './routes/root.js';
import homeRouter from './routes/home.js';

const app = express();
const port = process.env.PORT;


app.use(express.urlencoded({extended: true}));
app.use(express.json());

app.use('/', rootRouter);
app.use('/home', homeRouter);

app.use(function(req, res, next) {
    res.status(404);
    if (req.accepts('json')) {
      res.json({ error: 'Not found' });
      return;
    }
});

app.listen(port, () => {
    console.log(`Server Up on Port ${port}`);
    db.sequelize.authenticate().then(() => {
        console.log("Conectado a DB");
    }).catch(error => {
        console.log("Error:",error);
    })
});

