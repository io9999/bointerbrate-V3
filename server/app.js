import express from "express";
import pool from "./db.js";
import cors from "cors";

const app = express();
app.use(cors());

app.get("/api/get-them-levels", async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM levels_table");
    res.status(200).json(result.rows);
  } catch (err) {
    console.log(err);
  }
});

const PORT = 3000;

app.listen(PORT, () => {
  console.log(`Server is listening on port ${PORT}`);
});
