const controller = require("../controllers/search.controller");

module.exports =function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Content-Type, Accept"
    );
    next();
  });
 
  app.get("/api/search/:recherche", (req, res) => {
    const word = req.params.recherche;
    const words = word.split(/(\s+)/).filter( function(e) { return e.trim().length > 0; } );
    controller.search(words, res);
  });
};
