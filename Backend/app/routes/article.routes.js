const controller = require("../controllers/article.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

// Créer un Article
app.post("/api/articles", controller.createArticle);

//Récuperer tous les articles

// Récuperer un article par son id

// Update a commentaire with id

// Supprimer un article par son id

// --------------------------------------------------------------------------------------
 
// Créer un nouveau commentaire
 
//Récupérer un commentaire par son id
 
// Update a commentaire with id
 
// Supprimer un commentaire par son id

//Récuperer tous les commentaires

}