const controller = require("../controllers/lastarticle.controller");

module.exports = function (app) {
  app.use(function (req, res, next) {
    res.header(
      //"Access-Control-Allow-Headers",
      //"x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  // Créer un Article
  app.get("/api/lastarticles", controller.lastArticle);
}