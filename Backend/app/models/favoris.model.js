module.exports = (sequelize, Sequelize) => {
    const Favoris = sequelize.define("favoris", {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true
      },
      nom: {
        type: Sequelize.STRING
      }
    });
  
    return Favoris;
  };