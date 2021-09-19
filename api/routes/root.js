import  express  from "express";

const router = express.Router();

//Handle '/' route
router.get('/', (req, res) => {
    res.redirect('/Home');
});

export default router;