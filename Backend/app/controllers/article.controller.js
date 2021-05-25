const { article } = require("../models");

const db = require("../models/index.js", "../models");
const Article = db.article;
const Commentaire = db.commentaire;
const Op = db.Sequelize.Op;

//Create and Save a new users
exports.createArticle = (req, res) => {
    console.log(req.body)
    // Validate request
    if (!req.body.titre) {
        res.status(400).send({
            message: "Titre can not be empty"
        });
        return;
    };

    // Create a user
    const article = {
        titre: req.body.titre,
        description: req.body.description,
        image: req.body.image,
    };

    // Save user in the database
    Article.create(article)
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message : 
                    err.message || "Some error occurred while creating the article."
            });
        });
};

exports.findAll = (req, res) => {
    const id = req.query.id;
    var condition = id ? { id: { [Op.like]: `%${id}%` } } : null;
  
    Article.findAll({ where: condition })
      .then(data => {
          res.send(data);
      })
      .catch(err => {
          res.status(500).send({
              message : 
              err.message || "Some error occurred while retrieving the articles."
          });
      });
  };
  
  // Find a single article with an id
  exports.findOne = (req, res) => {
    const id = req.params.id;
  
    Article.findByPk(id)
      .then(data => {
          res.send(data);
      })
      .catch(err => {
          res.status(500).send({
              message : 
              err.message || "Error retrieving user with id=" +id
          });
      }); 
  };

