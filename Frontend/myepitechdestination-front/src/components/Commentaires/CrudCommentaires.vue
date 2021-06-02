<template>
    <div class="container">
      <BoardAdmin />
      <div class="container">
      <div class="header">

          <h1>Liste des commentaires</h1>
        </div>

       <div v-if="commentaires.length === 0">
            <h2> Pas de commentaire trouvé pour le moment </h2>
        </div>

        <div class="tableau">
            <table class="table">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">id</th>
                  <th scope="col">Nom Prénom</th>
                  <th scope="col">Commentaire</th>
                  <th scope="col">ArticleId attaché</th>
                  <th scope="col">Date de création</th>
                  <th scope="col">Date de modification</th>                  
                  <th scope="col">Actions</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="commentaire in commentaires" :key="commentaire.id">
                  <td>{{ commentaire.id }}</td>
                  <td>{{ commentaire.nom }}</td>
                  <td>{{ commentaire.commentaire }}</td>
                  <td>{{ commentaire.articleId }}</td>
                  <td>{{ commentaire.createdAt }}</td>
                  <td>{{ commentaire.updatedAt }}</td>
                  <td class="table-row-modif">
                    <div class="table-row-modif">
                        <router-link :to="{name: 'EditCommentaire', params: {id: commentaire.id}}" class="link"><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i></router-link>
                        <button class="delete" v-on:click="deletecommentaire(commentaire.id)"><i class="fa fa-trash-o fa-2x" aria-hidden="true"></i></button>
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
import BoardAdmin from '@/components/BoardAdmin.vue'
import axios from "axios";

export default {
    name : "CrudCommentaires",
     components: {
      BoardAdmin,
    },
  data() {
    return {
      commentaires: {},
    };
  },
  
  created() {
    this.fetchcommentaires();
  },
  methods: {
    fetchcommentaires() {
      axios
        .get('http://localhost:8080/api/commentaires')
        .then(data => (this.commentaires = data.data));
        
    },
    deletecommentaire(id) {
      if(confirm("Etes-vous sûr de vouloir supprimer ce commentaire ?")){
        axios.delete('http://localhost:8080/api/commentaires/'+ id,)
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
    font-family: 'Bebas Neue';
    
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
  background-color: #e5e5e575;
  margin-bottom: 100px;
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
  color: #C40002;
}
</style>

