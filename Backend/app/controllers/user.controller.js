const db = require("../models/index.js", "../models/user.model.js");
const User = db.user;
const Op = db.Sequelize.Op;

//Create and Save a new users
exports.create = (req, res) => {
    console.log(req.body)
    // Validate request
    if (!req.body.email) {
        res.status(400).send({
            message: "Email can not be empty"
        });
        return;
    };

    // Create a user
    const user = {
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        email: req.body.email,
        password: req.body.password,
    };

    // Save user in the database
    User.create(user)
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message : 
                    err.message || "Some error occurred while creating the user."
            });
        });
};

// Retrieve all users from the database.
exports.findAll = (req, res) => {
  const email = req.query.email;
  var condition = email ? { email: { [Op.like]: `%${email}%` } } : null;

  User.findAll({ where: condition })
    .then(data => {
        res.send(data);
    })
    .catch(err => {
        res.status(500).send({
            message : 
            err.message || "Some error occurred while retrieving the users."
        });
    });
};

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
            err.message || "Error retrieving user with id=" +id
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
                    message: "User was updated successfully."
                });
            } else {
                res.send({
                    message: `Cannot update user with id=${id}.`
                });
            }
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Error updating user with id=" +id
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
                message: "User was deleted successfully !"
            });
        } else {
            res.send({
                message: `Cannot delete user with id=${id}.`
            });
        }
    })
    .catch(err => {
        res.status(500).send({
            message : 
            err.message || "Could not delete user with id=" +id 
        });
    });
};

// Delete all users from the database.
exports.deleteAll = (req, res) => {
    User.destroy({
        where: {},
        truncate: false
    })
        .then(num => {
            res.send({
                message: `${num} Users were deleted successfully !`
            });
        })
        .catch(err => {
            res.status(500).send({
                message : 
                err.message || "Some error occurred while removing all users."
            });
        });
};


exports.allAccess = (req, res) => {
    res.status(200).send("Public Content.");
  };
  
exports.userBoard = (req, res) => {
    res.status(200).send("User Content.");
};

exports.adminBoard = (req, res) => {
    res.status(200).send("Admin Content.");
};
