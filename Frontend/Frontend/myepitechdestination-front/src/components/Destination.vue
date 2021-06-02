<template>
    <div class="container">
      <Header />
      <Dropdown />
      <div class="header">
        <h4>Tous les articles</h4>
        <div class="button">
          <button>Voir 6 / page</button>
        </div> 
      </div>
     
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <div  v-for="article in articles" v-bind:key="article.id" class="col">
          
          <div id="card" class="card h-100">
            <a :href="'/article/'+ article.id"><img :src="'http://localhost:8080/'+ article.image" width="400" ></a>
            <div class="card-body">
              <div class="title-heart"> 
                <h5 class="card-title">{{article.titre}}</h5>
                <i class="fa fa-heart-o fa-2x" aria-hidden="true"></i>
              </div>
              <p class="card-text">Prénom Nom  |  10 janvier 2020</p>
              <!-- <ul class="stars">
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
                <li><i class="fa fa-star-o fa-2x" aria-hidden="true"></i></li>
              </ul> -->
            </div>
          </div>
          
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
    margin-bottom: 50px;
}
.header h4{
  font-weight: lighter;
}
.button{
    flex: 1;
    text-align: right;
}

.button button{
    width: 150px;
    height: 50px;
    border-radius: 8px;
    border: 1px solid #85c4af;
    background-color: white;
    color: black;
    font-weight: bold;
    font-size: 1.2em;
    outline: none;
    font-weight: lighter;
}

.button button:hover{
    font-weight: normal;
    border: 3px solid #85c4af;
}

.row-cols-1{
  margin-bottom: 150px;
}

#card{
  background-color: #1B1B52;
  height: auto;
  border: none;
}

#card img{
  width: 100%;
  height: auto;
}
.card-body{
  font-family: 'Lato';
  color: white;
  
}

.title-heart{
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
}


.card-title{
  font-size: 2.1em;
  text-decoration: none;
  
}

.card-text{
  margin-top: 20px;
  font-weight: normal;
  font-size: 1.2em;
}

.stars{
  list-style: none;
  display: inline-flex;
  float: right;
  cursor: pointer;
}

.stars li{
  padding: 10px 4px 0px 4px;
  color: #85C4AF;
}

</style>