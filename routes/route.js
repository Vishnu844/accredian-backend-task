const { PrismaClient } = require("@prisma/client");
const router = require("express").Router();
const prisma = new PrismaClient();

router.post("/add", async (req, res) => {
  try {
    const { name, email, gender, phone, qualification, year } = req.body;
    const user = await prisma.user.create({
      data: {
        name: name,
        email: email,
        gender: gender,
        phone: phone,
        qualification: qualification,
        YoP: year,
      },
    });

    res.json({
      status: 1,
      message: "User added successfully",
    });
  } catch (e) {
    res.json({
      status: 0,
      message: e.message,
    });
  }
});

module.exports = router;
