import  express  from "express";
import * as controller from "../controller/controller.js";

const router = express.Router();

router.get('/', controller.get_ten_first);




export default router;