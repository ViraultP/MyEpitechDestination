module.exports = (sequelize, Sequelize) => {
    const Categorie = sequelize.define("categories", {
      restauration: {
        type: Sequelize.STRING
      },
      lieu: {
        type: Sequelize.STRING
      },
      activité: {
        type: Sequelize.STRING
      },
      hébergement: {
        type: Sequelize.STRING
      }
    });
    return Categorie;
  };