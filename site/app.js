const express = require("express");
const app = express();

const PORT = 3000;

app.use(express.json());

app.get("/", (req, res) => {
  res.send("weekli is alive");
});

app.listen(PORT, function (err) {
  if (err) console.log(err);
  console.log("SERVER listening on PORT", PORT);
});
