<template>
   <div>
     <BoardAdmin />
     <div class="back">
        <router-link to ="/crudUtilisateurs"><button class="button-back">Retour</button></router-link>
      </div>
        <div class="container create-article-form">
            <div class="title">
              <h2> Editer un commentaire </h2>
            </div>

            <div class="form">
            <form id="create-post-form" @submit.prevent="editcommentaire(id)">
                <div class="form-group col-md-12">
                    <label for="title"> Nom </label>
                    <input type="text" id="nom" v-model="commentaire.nom" name="nom" class="form-control" placeholder="Un nom différent ?">
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> Commentaire </label>
                    <textarea type="text" id="commentaire" v-model="commentaire.commentaire" name="commentaire" class="form-control" placeholder="Un commentaire ?"/>
                </div>
                <div class="form-group col-md-12">
                    <label for="title"> ArticleId </label>
                    <input type="text" id="articleId" v-model="commentaire.articleId" name="articleId" class="form-control" placeholder="Changer l'articleId ">
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
    name: "EditCommentaire",
    components: {
      BoardAdmin,
    },
  data() {
    return {
      id: 0,
      commentaire: {},
    };
  },
  created() {
    this.id = this.$route.params.id;
    this.getcommentaire(this.id);
  },
  methods: {
    editcommentaire(id) {
      let commentaireData = {
        id: this.commentaire.id,
        nom: this.commentaire.nom,
        commentaire: this.commentaire.commentaire,
        articleId: this.commentaire.articleId,
      };
      axios
        .put(
          'http://localhost:8080/api'+'/commentaires/'+ id, commentaireData
        )
        .then(data => {
          router.push({ name: "CrudCommentaires"}),
          console.log(data)
        });
    },
    getcommentaire(id) {
      axios
        .get('http://localhost:8080/api'+'/commentaires/'+ id)
        .then(data => (this.commentaire = data.data));
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
    width: 30%;
}

.form textarea {
  display: flex;
   margin: 0 30px;
   resize: none;
    box-sizing: border-box;
    outline: none;
    border: 2px solid #e4e4ec;
    border-radius: 0;
    margin-bottom: 60px;
    height: 100px;
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