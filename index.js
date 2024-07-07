const express = require("express");
const cors = require("cors");
require("dotenv").config();
const route = require("./routes/route");
const app = express();

app.use(express.json());
app.use(cors());

app.use("/api/referral-user", route);

app.listen(process.env.PORT, () => {
  console.log(`Server is running on port ${process.env.PORT}`);
});
