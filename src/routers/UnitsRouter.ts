import express, { Router } from 'express';
import UnitController from "../controllers/UnitController";

const router = Router();
const unitController = new UnitController();

router.get('/', unitController.getAllUnitData);
router.get('/available', unitController.getAvailableUnitData)
router.post('/', unitController.post)

export default router;