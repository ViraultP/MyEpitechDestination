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
};