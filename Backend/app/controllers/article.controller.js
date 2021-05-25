const { article, commentaire } = require("../models");
const db = require("../models/index.js", "../models");
const Article = db.article;
const Commentaire = db.commentaire;
const Op = db.Sequelize.Op;

//Créer un article
exports.createArticle = (req, res) => {
    const article = {
        titre: req.body.titre,
        description: req.body.description,
        image: req.body.image,
    };
    Article.create(article)
    .then((data) => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message:
            err.message || "some error occured while creating the user"
       })
    })
},

// Créer et sauvegarder un commentaires
exports.createCommentaire = (req, res) => {
    const commentaire = {
        nom: req.body.nom,
        commentaire: req.body.commentaire,
        articleId: req.body.articleId 
    };

    Commentaire.create(commentaire)
    .then((data) => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message:
            err.message || "some error occured while creating the user"
        })
    })
},

// Supprimer un commentaire par son id
exports.deleteCommentaire = (req, res) => {
    const id = req.params.id;
  
    Commentaire.destroy({
        where: { id: id }
    })
    .then(num => {
        if (num == 1) {
            res.send({
                message: "Commentaire was deleted successfully !"
            });
        } else {
            res.send({
                message: `Cannot delete Commentaire with id=${id}.`
            });
        }
    })
    .catch(err => {
        res.status(500).send({
            message : 
            err.message || "Could not delete Commentaire with id=" +id 
        });
    });
};

// Récuperer un article par son id avec ses commentaires.
exports.findOne = (req, res) => {
    const id = req.params.id;
    Article.findByPk(id)
    .then(article => {
        var condition = {articleId: id};
        Commentaire.findAll({ where: condition })
        .then(commentaires => {
            article.dataValues["commentaires"] = commentaires;
            res.send(article);
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Some error occurred while retrieving the comments."
            });
        });
    })
};

// supprimer un articles et ses commentaires.
exports.deleteOneArticle = (req, res) => {
    const id = req.params.id;
    Article.findOne({ where: { id: id } })
        var condition = {articleId: id};
        Commentaire.destroy({ where: condition })
        Article.destroy({where: {id : id}})
        .then(num => {
            //article.dataValues["commentaires"] = [];
            if(num==1){
            //article.dataValues["commentaires"] = [];
            res.send({message : 'articles et commentaires supprimées avec succes'});}
            else
            {
                res.send({
                    message: `Cannot delete user with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "erreur dans la recherche des articles et de leurs commentaires."
            });
        });
};

// modifier les commentaires

exports.updateArticle = (req, res) => {
    const id = req.params.id;

    Article.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if(num == 1) {
                res.send({
                    message: "Article was updated successfully."
                });
            } else {
                res.send({
                    message: `Cannot update article with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Error updating article with id=" +id
            });
        }); 
};

// modifier les commentaires

exports.updateCommentaire = (req, res) => {
    const id = req.params.id;

    Commentaire.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if(num == 1) {
                res.send({
                    message: "Commentaire was updated successfully."
                });
            } else {
                res.send({
                    message: `Cannot update commentaire with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Error updating commentaire with id=" +id
            });
        }); 
};