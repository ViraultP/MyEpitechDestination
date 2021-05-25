module.exports = (sequelize, Sequelize) => {
  const Commentaire = sequelize.define("commentaires", {
    nom:{
      type: Sequelize.STRING
    },
    commentaire: {
      type: Sequelize.TEXT
    },
  });
  return Commentaire;
};