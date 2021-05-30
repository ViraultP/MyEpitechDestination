//constants

const db = require("../models");
const User = db.user;
const Role = db.role;
const user_roles = db.user_roles;
const Op = db.Sequelize.Op;


//Create and Save a new users
exports.create = (req, res) => {
    // Validate request
    if (!req.body.email) {
        res.status(400).send({
            message: "L'email ne peut pas être vide"
        });
        return;
    };

    // Create a user
    const user = {
        nom: req.body.nom,
        prénom: req.body.prénom,
        email: req.body.email,
        mot_de_passe: req.body.mot_de_passe,
    };

    // Save user in the database
    User.create(user)
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message : 
                    err.message || "Une erreur s'est produite lors de la création de l'utilisateur."
            });
        });
};

// Retrieve all users from the database.
exports.findAll = (req, res) => {
    User.findAll({
        include: [{
            model: Role,
            as: 'roles',
            attributes :["id","nom"],
            through: {
                model: user_roles,
                as: 'user_roles',
                attributes: ['userId', 'roleId']}
                }
        ]})
        .then(function(user){
            return res.jsonp(user);
        })
        .catch(err => {
            res.status(500).send({
                message :
                err.message || "Une erreur s'est produite lors de la récupération des utilisateurs."
            });
        });
}

// Find a single user with an id
exports.findOne = (req, res) => {
  const id = req.params.id;

  User.findByPk(id)
    .then(data => {
        res.send(data);
    })
    .catch(err => {
        res.status(500).send({
            message : 
            err.message || "Erreur lors de la récupération de l'utilisateur avec l'identifiant: " +id
        });
    }); 
};

// Update a user by the id in the request
exports.update = (req, res) => {
    const id = req.params.id;

    User.update(req.body, {
        where: { id: id }
    })
        .then(num => {
            if(num == 1) {
                res.send({
                    message: "L'utilisateur a été mis à jour avec succès."
                });
            } else {
                res.send({
                    message: `Impossible de mettre à jour l'utilisateur avec l'identifiant: ${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Erreur lors de la mise à jour de l'utilisateur avec l'identifiant: " +id
            });
        });
  
};

// Delete a user with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  User.destroy({
      where: { id: id }
  })
    .then(num => {
        if (num == 1) {
            res.send({
                message: "L'utilisateur a été supprimé avec succès !"
            });
        } else {
            res.send({
                message: `Impossible de supprimer l'utilisateur avec l'identifiant: ${id}.`
            });
        }
    })
    .catch(err => {
        res.status(500).send({
            message : 
            err.message || "Impossible de supprimer l'utilisateur avec l'identifiant: " +id 
        });
    });
};

exports.allAccess = (req, res) => {
    res.status(200).send("Contenu public.");
  };
  
exports.userBoard = (req, res) => {
    res.status(200).send("Contenu utilisateur.");
};

exports.adminBoard = (req, res) => {
    res.status(200).send("Contenu administrateur.");
};
