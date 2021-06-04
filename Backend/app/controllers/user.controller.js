// Imports
var bcrypt = require("bcryptjs");

//constants

const db = require("../models");
const User = db.user;
const Role = db.role;
const user_roles = db.user_roles;
const Op = db.Sequelize.Op;

// Retrieve all users from the database.
exports.findAll = (req, res) => {
    User.findAll({
        include: [{
            model: Role,
            as: 'roles',
            attributes: ["id", "nom"],
            through: {
                model: user_roles,
                as: 'user_roles',
                attributes: ['userId', 'roleId']
            }
        }]
    })
        .then(function (user) {
            return res.jsonp(user);
        })
        .catch(err => {
            res.status(500).send({
                message:
                    err.message || "Une erreur s'est produite lors de la récupération des utilisateurs."
            });
        });
}

// Find a single user with an id
exports.findOne = (req, res) => {
    const id = req.params.id;

    User.findByPk(id, {
        include: [{
            model: Role,
            as: 'roles',
            attributes: ["id", "nom"],
            through: {
                model: user_roles,
                as: 'user_roles',
                attributes: ['userId', 'roleId']
            }
        }]
    })
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message:
                    err.message || "Erreur lors de la récupération de l'utilisateur avec l'identifiant: " + id
            });
        });
};

// Update a user by the id in the request
exports.update = (req, res) => {
    const id = req.params.id;
    User.update({
        nom: req.body.nom,
        prénom: req.body.prénom,
        email: req.body.email,
        mot_de_passe: bcrypt.hashSync(req.body.mot_de_passe, 8),
    },
        {
            where: { id: id }
        })
        .then(user => {
            if (req.body.roles) {
                Role.findAll({
                    where: {
                        nom: {
                            [Op.or]: req.body.roles
                        }
                    }
                })
                    .then(roles => {
                        user.setRoles(roles)
                            .then(() => {
                                res.send({ message: ";;;;;;;;;;" });
                            });
                    });
            } else {
                // user role = 1
                user.setRoles([1])
                    .then(() => {
                        res.send({ message: "bbbbbbbbbbbb" });
                    });
            }
        })
        .then(num => {
            if (num == 1) {
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
                message:
                    err.message || "Erreur lors de la mise à jour de l'utilisateur avec l'identifiant: " + id
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
                message:
                    err.message || "Impossible de supprimer l'utilisateur avec l'identifiant: " + id
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