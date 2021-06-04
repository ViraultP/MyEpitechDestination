<template>

    <div class="container">
      <Header />
      <Dropdown />
      <div class="row header">
        <a href="/destination"><i class="fa fa-long-arrow-left fa-4x" aria-hidden="true"></i></a> 
        <h1>{{article.titre}}</h1>
      </div>

      <div class="row image">
        <img :src="'http://localhost:8080/'+ article.image" width="400" >
      </div>
      <div class="row infos">
        <p>10 janvier 2020 | Prénom Nom</p>
      </div>
      <div class="row description">
        <p>{{article.description}}</p>
        <hr>
      </div>

      <div class="row">
        <div class="evaluation">
          <h1>Cet article est utile ?</h1>
          <ul class="stars">
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
            </ul>
        </div>
      </div>

      <div class="container">
        <div class="comment">
          <h1>Laisser un commentaire</h1>
          <form @submit.prevent="createCommentaire" class="create-comment">
              <div class="name">
<<<<<<< HEAD
                <input v-model='nom' type="text" placeholder="Entrer votre nom">
              </div>
            <div class="row">
              <textarea v-model='commentaire' placeholder="Ecrire un commentaire..." type="text"/>
            </div>
            <div class="id">
              <input class="id" v-model='article.id' readonly='true'>
            </div>
            
            <button type="submit" >Envoyer</button>
=======
                <input v-model='nom' type="text" placeholder="Votre nom">
              </div>
            <div class="row">
              <textarea v-model='commentaire' placeholder="Ecrire un commentaire..." type="text"/>
            </div>
            <div class="id">
              <input class="id" v-model='article.id' readonly='true'>
            </div>
            <div class="comment-button">
              <button type="submit" >Envoyer</button>
            </div>
>>>>>>> refs/remotes/origin/FrontSarah
          </form>
        </div>
      </div>

      <div class="container" v-for="commentaire in article.commentaires" v-bind:key="commentaire.id" >
        <div class="all-comments">
            <hr>
            <h4>{{commentaire.nom}}</h4>
            <h6>{{commentaire.createdAt}}</h6>
            <p>{{commentaire.commentaire}}</p>  
        </div>
      </div>
<Footer />
  </div>
        
</template>

<script>
import Header from '@/components/Header.vue'
import Dropdown from './Dropdown'
import Footer from '@/components/Footer.vue'
import axios from "axios"

export default {
  name: "Destination",
  components: {
    Header,
    Dropdown,
    Footer
  },
  data () {
    return {
      article: {},
      commentaires: {},
    }
  },
  created(){
    this.fetcharticle();
    },
    methods: {
      fetcharticle () {
        axios
       .get('http://localhost:8080/api/articles/'+ this.$route.params.id)
      .then(data => (this.article = data.data));
      console.log(this.article)
      },

      createCommentaire(){
        axios.post('http://localhost:8080/api/commentaires',{nom:this.nom, commentaire:this.commentaire, articleId:this.article.id})
        .then((response)=>{this.nom='';
        this.commentaire='';
        this.fetcharticle();
        console.log(response);})
        .catch((err) => {
          console.log(err)
        })
      },
    }

};
</script>


<style scoped>

.header .fa-long-arrow-left{
  width: 150px;
  margin-bottom: 50px;
  color: black;
}

.header .fa-long-arrow-left a{
  text-decoration: none;
}

.header .fa-long-arrow-left:hover{
  color: #85C4AF; 
}

.header h1{
     font-family:'Bebas Neue', cursive;
     font-size: 2.6em;
}

.image{
  width: 100%;
  margin-bottom: 10px;
}

.infos p{
  margin-top: 10px; 
  font-family: 'Lato';
  font-size: 1.2em;
  font-weight: l;
}

.description p{
  text-align: justify; 
  font-family: 'Lato';
  font-size: 1.4em;
  line-height: 2em;
}

.evaluation{
  width: 100%;
  height: 12%;
  display: flex;
  align-items: center;
  margin-bottom: 50px;
  
}

.evaluation h1{
  font-family: 'Bebas Neue', cursive;
  font-size: 2.3em;
}

.evaluation .stars{
  flex: 1;
  text-align: right;
}

.stars {
  list-style: none;
  display: inline-flex;
  cursor: pointer;
}

.fa-star-o{
  flex: 1;
  text-align: right;
}

.stars li{
  float: right;
  padding: 10px 4px 0px 4px;
  color: #85C4AF;
}



.comment h1{
  font-family: 'Bebas Neue', cursive;
  font-size: 2.3em;
}

.create-comment{
  font-family: 'Lato';
}

.id{
  display : none;
}

.create-comment .nom {
  font-size: 1.2em;
}

.name{
<<<<<<< HEAD
  display: flex;
}

.name input {
  border: 2px solid black;
  border-radius: 6px;
=======
  display: block;
}

.name input {
  border: none;
  border-bottom: 2px solid black;
>>>>>>> refs/remotes/origin/FrontSarah
  padding: 0 10px;
  margin: 15px;
  height: 35px;
}

.create-comment textarea{
<<<<<<< HEAD
  border: 2px solid black;
=======
  border: none;
  background-color: #c4c4c494;
>>>>>>> refs/remotes/origin/FrontSarah
  border-radius: 6px;
  resize: none;
  width: 80%;
  height: 150px;
  margin: 15px;
<<<<<<< HEAD
=======
}

.comment-button{
  display: flex;
  text-align: right;
>>>>>>> refs/remotes/origin/FrontSarah
}

.create-comment button{
  display: flex;
  text-align: right;
  margin: 20px 0;
  background-color: #85C4AF;
  border-radius: 6px;
  padding: 10px 20px;
  color: white;
  border: none; 
  border-radius: 10px;
  font-size: 1.2em;
}

.comment h1{
  font-family: 'Bebas Neue', cursive;
  font-size: 2.3em;
}

hr{
  color: #85C4AF;
}

.all-comments{
  font-family: 'Lato';
}

.all-comments h4{
  font-weight: bold;
  margin-top: 25px;
}

.all-comments h6{
  font-weight: lighter;
  color: #7F7F7F;
  font-weight: lighter;
  font-size: 1.2em;
}

.all-comments p{
  margin: 50px 0;
  font-size: 1.4em;
  line-height: 1.7em;
  text-align: justify;
}

</style>