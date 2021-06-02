<template>
   <div>
     <BoardAdmin />
        <!-- <h4 class="text-center mt-20">
            <small>
            <button class="btn btn-success" v-on:click="navigate()"> Profile </button>
            </small>
        </h4> -->
        <div class="back">
            <router-link to ="/crudUtilisateurs"><button class="button-back">Retour</button></router-link>
          </div>
          
        <div class="container create-article-form">
          <div class="title">
              <h2> Editer un utilisateur </h2>
            </div>

          <div class="form">
            <form id="create-post-form" @submit.prevent="edituser(id)">
                <div class="form-group col-md-12">
                    <label for="title"> Nom </label>
                    <input type="text" id="nom" v-model="user.nom" name="title" class="form-control" placeholder="Entrer un nom">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Prénom </label>
                    <input type="text" id="prénom" v-model="user.prénom" name="title" class="form-control" placeholder="Entrer un prénom">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Email </label>
                    <input type="text" id="email" v-model="user.email" name="title" class="form-control" placeholder="Entrer un email">
                </div>             
                <div class="form-group col-md-12">
                    <button class="btn btn-success" type="submit"> Editer un utilisateur </button>
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
    name: "EditUtilisateurs",
    components: {
      BoardAdmin,
    },
  data() {
    return {
      id: 0,
      user: {},
    };
  },
  created() {
    this.id = this.$route.params.id;
    this.getuser(this.id);
  },
  methods: {
    uploadImage(event){
      this.image = event.target.files[0]
    },
    edituser(id) {
      let userData = {
        id: this.user.id,
        nom: this.user.nom,
        prénom: this.user.prénom,
        email: this.user.email,
        mot_de_passe: this.user.mot_de_passe,
      };
      axios
        .put(
          'http://localhost:8080/api'+'/users/'+ id, userData
        )
        .then(data => {
          router.push({ name: "CrudUtilisateurs"}),
          console.log(data)
        });
    },
    getuser(id) {
      axios
        .get('http://localhost:8080/api'+'/users/'+ id)
        .then(data => (this.user = data.data));
    },
    navigate() {
      router.go(-1);
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