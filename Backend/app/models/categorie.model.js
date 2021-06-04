<<<<<<< HEAD
module.exports = (sequelize, Sequelize) => {
    const Categorie = sequelize.define("categories", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      nom: {
        type: Sequelize.STRING
      }
    });
    return Categorie;
=======
module.exports = (sequelize, Sequelize) => {
    const Categorie = sequelize.define("categories", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      nom: {
        type: Sequelize.STRING
      }
    });
    return Categorie;
>>>>>>> Back-End
  };