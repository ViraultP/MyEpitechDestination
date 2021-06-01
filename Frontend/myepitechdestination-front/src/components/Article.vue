<template>

    <div class="container">
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
          <h1>Cet articles est utile ?</h1>
          <ul class="stars">
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
            </ul>
        </div>
        
        
      </div>
    </div>
        
</template>

<script>
import axios from "axios"

export default {
  name: "Destination",
  components: {
 
  },
  data () {
    return {
      article: null
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
      }
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
  font-size: 1.3em;
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

/* .title-heart{
    height: 12%;
    display: flex;
    align-items: center;
    padding: 20px 0;
    
}

.fa-heart-o{
    flex: 1;
    text-align: right;
    color: #85C4AF;
    cursor: pointer;
} */



</style>