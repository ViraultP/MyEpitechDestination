module.exports = (sequelize, Sequelize) => {
    const Etat = sequelize.define("etats", {
      Pays: {
        type: Sequelize.STRING
      },
    });
    return Etat;
  };