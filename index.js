const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.json({ message: "Bienvenue sur mon API statique pour le mini projet de DevOps" });
});

app.listen(3000, () => {
  console.log("🚀 Serveur en cours d'exécution sur http://localhost:3000");
});