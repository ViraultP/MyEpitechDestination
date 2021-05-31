<template>
    <div>

      <div class="header">
        <h4>Les bons plans</h4>
        <div class="button">
          <button>Voir 9 / page</button>
        </div> 
      </div>
     
      <div  class="row row-cols-1 row-cols-md-3 g-4">
        <div  v-for="article in articles" v-bind:key="article.id" class="col">
          <div id="card" class="card h-100">
            <img :src="'http://localhost:8080/'+ article.image" width="400" >
            <div class="card-body">
              <h5 class="card-title">{{article.titre}}</h5>
              <p class="card-text">Nom Prénom, 10 janvier 2020</p>
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
      articles: ""
    }
  },
  created(){
    this.fetcharticles();
    },
    methods: {
      fetcharticles () {
        axios
       .get('http://localhost:8080/api/articles')
      .then(data => (this.articles = data.data));
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

.button{
    flex: 1;
    text-align: right;
}

.button button{
    width: 190px;
    height: 50px;
    border-radius: 8px;
    border: 2px solid #85c4af;
    background-color: white;
    color: #85c4af;
    font-weight: bold;
    font-size: 1.2em;
    outline: none;
}

#card{
  background-color: #1B1B52;
}

#card img{
  width: 100%;
  height: auto;
}
.card-body{
  font-family: 'Lato';
  color: white;
}

.card-title{
  font-size: 1.9em;
}

.card-text{
  font-weight: normal;
}

.stars{
  list-style: none;
  display: inline-flex;
  float: right;
  
}

.stars li{
  padding: 0 4px;
  color: #85C4AF;
}

</style>