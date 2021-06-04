<<<<<<< HEAD
module.exports = (sequelize, Sequelize) => {
  const Article = sequelize.define("articles", {
    titre: {
      type: Sequelize.STRING
    },
    description: {
      type: Sequelize.TEXT
    },
    image: {
      type: Sequelize.STRING
    },
  });
  return Article;
=======
module.exports = (sequelize, Sequelize) => {
  const Article = sequelize.define("articles", {
    auteur: {
      type: Sequelize.STRING
    },
    titre: {
      type: Sequelize.STRING
    },
    description: {
      type: Sequelize.TEXT
    },
    image: {
      type: Sequelize.STRING
    },
  });
  return Article;
>>>>>>> Back-End
};