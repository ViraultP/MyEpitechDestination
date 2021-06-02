<template>
   <div>
     <BoardAdmin />
        <!-- <h4 class="text-center mt-20">
            <small>
            <button class="btn btn-success" v-on:click="navigate()"> Profil </button>
            </small>
        </h4> -->
        <div class="back">
            <router-link to ="/crudUtilisateurs"><button class="button-back">Retour</button></router-link>
          </div>

        <div class="container create-article-form">
            <div class="title">
              <h2> Editer un article </h2>
            </div>

            <div class="form">
            <form id="create-post-form" @submit.prevent="editarticle(id)">
                <div class="form-group col-md-12">
                    <label for="title"> Titre </label>
                    <input type="text" id="titre" v-model="article.titre" name="title" class="form-control" placeholder="Un titre ...">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Description </label>
                    <input type="text" id="description" v-model="article.description" name="title" class="form-control" placeholder="Un description ....">
                </div> 
                <div class="form-group col-md-12">
                    <button class="btn btn-success" type="submit"> Editer un article </button>
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
    name: "EditArticles",
     components: {
      BoardAdmin,
    },
  data() {
    return {
      id: 0,
      article: {},
    };
  },
  created() {
    this.id = this.$route.params.id;
    this.getarticle(this.id);
  },
  methods: {
    editarticle(id) {
      let articleData = {
        id: this.article.id,
        titre: this.article.titre,
        description: this.article.description,
      };
      axios
        .put(
          'http://localhost:8080/api'+'/articles/'+ id, articleData
        )
        .then(data => {
          router.push({ name: "CrudArticles"}),
          console.log(data)
        });
    },
    getarticle(id) {
      axios
        .get('http://localhost:8080/api'+'/articles/'+ id)
        .then(data => (this.article = data.data));
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
