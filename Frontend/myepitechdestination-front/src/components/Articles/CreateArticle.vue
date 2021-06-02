<template>
   <div>
     <BoardAdmin />
      <!-- <h4 class="text-center mt-20">
            <small>
            <button class="btn btn-success" v-on:click="navigate()"> Profil </button>
            </small>
      </h4> -->
          <div class="back">
            <router-link to ="/crudArticles"><button class="button-back">Retour</button></router-link>
          </div>
          <div class="container create-article-form">
            <div class="title">
              <h2> Créez un article </h2>
            </div>
            
            <div class="form">

              <form id="create-post-form" @submit.prevent="createArticle">
               <div class="form-group col-md-12">
                    <label for="title"> Auteur </label>
                    <input type="text" id="auteur" v-model="auteur" name="title" class="form-control" placeholder="email">
                </div>

                <div class="form-group col-md-12">
                    <label for="title"> Titre </label>
                    <input type="text" id="titre" v-model="titre" name="title" class="form-control" placeholder="Un titre">
                </div>

                <div class="form-group col-md-12">
                    <label for="title"> Description </label>
                    <textarea type="text" id="description" v-model="description" name="title" class="form-control" placeholder="Une description"/>
                </div>

                <div class="form-group col-md-12">
                  <label for="title"> Université </label>
                  <select v-model="universite">
                    <option v-for="universite in universites.data" :key="universite.id" :value="{id: universite.id, text: universite.nom}">
                      {{ universite.nom }}
                      {{ universite.id }}
                    </option>
                  </select>
                </div>

                <div class="form-group col-md-12">
                  <div class="image">
                      <label for="title"> Télécharger une image </label><br/>
                    <input type="file" name="image" class="form-control-file" id="image" @change="uploadImage">
                  </div>
                 </div>              
                <div class="form-group col-md-12">
                    <button class="btn btn-success" type="submit"> Créez un article </button>
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
    name:"CreateArticle",
    components: {
      BoardAdmin,
    },
  data() {
    return {
      auteur: "",
      titre: "",
      description:"",
      image: "",
      universites: []
    };
  },
  created() {
    this. getAllUniversite();
  },
  methods: {
    uploadImage(event){
      this.image = event.target.files[0]
    },
    createArticle(){
      let formData = new FormData();

    formData.append("image", this.image);
    formData.append("auteur", this.auteur);
    formData.append("titre", this.titre);
    formData.append("description", this.description);
    formData.append("universiteId", this.universite.id);
    console.log(this.universite.id);
    axios.post('http://localhost:8080/api/articles', formData)
      .then((res) => {
        router.push({ name: "CrudArticles" });
          console.log(res);
      })
      .catch((error) => {
        console.log(error);
      });
    },
    getAllUniversite() {
      axios.get("http://localhost:8080/api/universite").then((resp) => {
        this.universites = resp;
        console.log(this.universites);
      });
    },
    navigate() {
      router.go(-1);
    }
  }
}
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