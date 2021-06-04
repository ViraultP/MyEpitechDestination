<template>
   <div>
     <BoardAdmin />
     <div class="back">
        <router-link to ="/crudUtilisateurs"><button class="button-back">Retour</button></router-link>
      </div>
          
      <div class="container create-article-form">
        <div class="title">
              <h2> Créez un utilisateur </h2>
            </div>
            <div class="form">
            
              <form id="create-post-form" @submit.prevent="createCustomer()">
                <div class="form-group col-md-12">
                    <label for="title"> Nom </label>
                    <input type="text" id="nom" v-model="nom" name="title" class="form-control" placeholder="Entrez un nom">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Prénom </label>
                    <input type="text" id="prénom" v-model="prénom" name="title" class="form-control" placeholder="Entrez un prénom">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Email </label>
                    <input type="text" id="email" v-model="email" name="title" class="form-control" placeholder="Entrez un email">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Mot de passe </label>
                    <input type="password" id="mot_de_passe" v-model="mot_de_passe" name="title" class="form-control" placeholder="Entrez un mot de passe">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Confirmer le mot de passe </label>
                    <input type="password" id="confirm_mot_de_passe" v-model="confirm_mot_de_passe" name="title" class="form-control" placeholder="Confirmez votre mot de passe">
                </div>
                
                <div class="form-group col-md-12">
                    <button class="btn btn-success" type="submit"> Créer un utilisateur </button>
                </div>           
            </form>
            </div>
            
        </div>
    </div>
</template>

<script>
import axios from "axios";
import BoardAdmin from '@/components/BoardAdmin.vue'
import router from "../../router";

export default {
    name:"CreateUtilisateur",
    components: {
      BoardAdmin,
    },
    data() {
    return {
      nom: "",
      prénom:"",
      email: "",
      mot_de_passe: ""
    };
  },
  methods: {
    createCustomer() {
      let customerData = {
        nom: this.nom,
        prénom: this.prénom,
        email: this.email,
        mot_de_passe: this.mot_de_passe
      };
      this.__submitToServer(customerData);
    },
    
    __submitToServer(data) {
      axios.post('http://localhost:8080/api/auth/signup', data).then(data => {
        router.push({ name: "CrudUtilisateurs" });
        return data
      });
    }
  }
};
</script>

<style scoped>
.button-back{
  background-color: transparent;
  border-radius: 6px;
  padding: 5px 15px;
  font-family: 'Lato';
}

.button-back:hover{
  background-color: black;
  color:white;
  border: 1px solid black;
}

.title{
  text-align: center;
}

.form{
  text-align: center;
}

.col-md-12{
   display: flex;
   align-items: baseline;
}

.form input {
  display: flex;
   margin: 0 30px;
    box-sizing: border-box;
    border: none;
    outline: none;
    border-bottom: 2px solid #e4e4ec;
    border-radius: 0;
    margin-bottom: 60px;
    width: 50%;
}

.form textarea {
    margin: 0 30px;
    box-sizing: border-box;
    resize: none;
    border: 2px solid #e4e4ec;
    outline: none;
    border-radius: 0;
    margin-bottom: 60px;
    width: 50%;
}

.form select {
    margin: 0 30px;
    box-sizing: border-box;
    border: none;
    outline: none;
    border-bottom: 2px solid #e4e4ec;
    border-radius: 0;
    margin-bottom: 60px;
    width: 200px;
}

.form input:hover{
    border-bottom: 2px solid #85c4af;
}

.image{
  display: inline-flex;
}

.image input {
  border: none;
}

.image input:hover{
    border-bottom: none;
}

.button{
  text-align: center;
}

.form button {
    width: 190px;
    height: 50px;
    border-radius: 8px;
    border: none;
    background-color: #85c4af;
    color: white;
    font-weight: bold;
    font-size: 1em;
    outline: none;
    margin: 0 auto;
}

.form button a{
    text-decoration: none;
    color: #ffffff;
    font-size: 19px;
}

.form button:hover{
  border: 2px solid #85c4af;
  background-color: transparent;
  color: #85c4af;
}

</style>