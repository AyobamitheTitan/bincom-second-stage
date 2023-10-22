const express = require("express");
const hbs = require("express-handlebars");
const prisma = require("./prisma");

const app = express();

app.engine("handlebars", hbs.engine());
app.set("view engine", "handlebars");
app.set("views", "./views");

app.get("/", async (req, res) => {
  return res.render("home", { title: "Bincom Assignment" });
});

app.get("/polling", (req, res) => {
  return res.render("polling");
});

app.get("/polling/:id", async (req, res) => {
  const query = await prisma.$queryRawUnsafe(
    `SELECT * FROM polling_unit WHERE uniqueid = ${req.params.id}`
  );
  return res.status(200).json(query);
});

app.get("/lga", (req, res) => {
  return res.render("lga");
});

app.get("/lga/:id", async (req, res) => {
  const query = await prisma.$queryRawUnsafe(
    `SELECT * FROM polling_unit WHERE lga_id = ${req.params.id}`
  );
  return res.status(200).json(query);
});

app.listen(3000, () => {
  console.log("Listening on port 3000");
});
