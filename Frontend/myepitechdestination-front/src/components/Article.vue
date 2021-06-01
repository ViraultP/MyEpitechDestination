<template>
    <div class="container">
      <div class="header">
        <h4>Article page</h4>
        <div class="button">
          <button>Voir 7 / page</button>
          {{$route.params.id}}
          
        </div> 
      </div>
     
     <p>{{article.titre}}</p>
     <img :src="'http://localhost:8080/'+ article.image" width="400" >
     <p>{{article.description}}</p>
    
       
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