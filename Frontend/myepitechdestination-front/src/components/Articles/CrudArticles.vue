<template>
    <div class="container">
       <BoardAdmin />
       <div class="container">
        <!-- <div class="create-article">
          <router-link to="/createarticle"><button><i class="fa fa-plus" aria-hidden="true">Créer un nouvel article</i></button></router-link>
        </div> -->
        <div class="header">
          <h1>Liste des articles</h1>
          <router-link to="/createarticle"><button><i class="fa fa-plus" aria-hidden="true">Créer un nouvel article</i></button></router-link>
        </div>
        <!-- ----------------------------SI PAS D'ARTICLES-------------------------------- -->
       <div v-if="articles.length === 0">
            <h2> Pas d'article trouvé pour le moment </h2>
        </div>
        <!-- ----------------------------TABLEAU-------------------------------- -->
        <div class="tableau">
          <table class="table">
            <!-- ----tableau : header-------- -->
            <thead class="table-header">
              <tr>
                <th scope="col">id</th>
                <th scope="col">Image</th>
                <th scope="col">Titre</th>
                <th scope="col">Description</th>
                <th scope="col">Username</th>
                <th scope="col">Created at</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <!-- -----tableau : body-------- -->
            <tbody>
                <tr v-for="article in articles" :key="article.id" class="table-body">
                  <td class="table-id">{{ article.id }}</td>
                  <td class="table-image"><img :src="'http://localhost:8080/'+ article.image" width="250" ></td>
                  <td class="table-title">{{ article.titre }}</td>
                  <td class="table-description">{{ article.description }}</td>
                  <td class="table-row"></td>
                  <td>{{ article.createdAt }}</td>
                  <td class="table-row">
                    <div class="table-row-modif">
                        <router-link :to="{name: 'EditArticles', params: {id: article.id}}" class="link"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></router-link>
                        <button class="delete" v-on:click="deletearticle(article.id)"><i class="fa fa-trash-o fa-2x" aria-hidden="true"></i></button>
                      </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          </div>
      </div>
 
</template>

<script>
import axios from "axios";
import BoardAdmin from '@/components/BoardAdmin.vue'
export default {
    name : "CrudArticles",
    components: {
      BoardAdmin,
    },
  data() {
    return {
      articles: {},
    };
  },
  
  created() {
    this.fetcharticles();
  },
  methods: {
    fetcharticles() {
      axios
        .get('http://localhost:8080/api/articles')
        .then(data => (this.articles = data.data));
        
    },
    deletearticle(id) {
      if(confirm("Etes-vous sûr de vouloir supprimer cet article ?")){
        axios.delete('http://localhost:8080/api/articles/'+ id,)
        .then(data => {
          console.log(data);
          window.location.reload();
        });
      }
    }
  }
};
</script>


<style scoped>

.header{
    height: 12%;
    display: flex;
    align-items: center;
    
}

.header h1{
  margin: 15px 0;
  font-family:'Bebas Neue', cursive;
}

.header a{
    flex: 1;
    text-align: right;
    font-family: 'Lato';
    
} 
.header button{
  background-color: transparent;
  border: 2px solid #85C4AF;
  border-radius: 6px;
  padding: 10px 15px;
}

.header button:hover{
  background-color: #85C4AF;
  padding: 10px 15px;
}

.header a i{
  padding: 0 20px;
  background-color: transparent;
}
/* 
.table{
  border-collapse: separate;
} */

.table-header{
  border: hidden;
  color: grey;
  text-align: center;
}

.table-header th{
  font-weight: 600;
}

.table-body{
  border-bottom: 10px solid white;
  background-color: #E5E5E5;
  margin-bottom: 100px;
}

.table-id {
  font-weight: lighter;
}

.table-title {
  font-weight: bold;
}

.table-description {
  text-align: justify;
}

.table-row-modif{
  background-color: transparent
}

.table-row-modif .link{
  text-decoration: none;
  color: grey;
  background-color: transparent;
  padding: 10px 20px;
}

.table-row-modif i{
  background-color: transparent;
}

.table-row-modif .delete {
  border: none;
  background-color: transparent;
  padding: 10px 20px;
}

.table-row-modif .delete i{
  color: red;
}


</style>

