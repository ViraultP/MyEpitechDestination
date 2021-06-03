<template>
  <div>
    <div class="container searchbar">
      <div class="row">
        <div class="nav justify-content-center">
          <input
            type="text"
            name=""
            placeholder="Recherche par article"
            v-model="query"
            @keyup="searchBar(query)"
          />
          </div>
        </div>
         <div class="article" v-for="article in data.data" :key="article">
            <h1>{{article.titre}}</h1>
              <div><a :href="'/article/' + article.id"
            ><img :src="'https://my-epitech-destination-api.herokuapp.com/' + article.image" 
          /></a></div>
      </div>
    </div>
  </div>
</template>


<script>
import axios from "axios";
import UserService from "../services/user.service";
export default {
  name: "SearchBar",
  data() {
    return {
      content: "",
      data: [],
      articles: [],
    };
  },
  mounted() {
    UserService.getPublicContent().then(
      (response) => {
        this.content = response.data;
      },
      (error) => {
        this.content =
          (error.response &&
            error.response.data &&
            error.response.data.message) ||
          error.message ||
          error.toString();
      }
    );
  },
  created() {
    this.searchBar();
  },
  methods: {
    searchBar(query) {
      axios
        .get("https://my-epitech-destination-api.herokuapp.com/api/search?recherche=" + query)
        .then((resp) => {
          this.data = resp;
          console.log(this.data.data);
        });
    },
    onChange: function () {
      console.log(this.continent);
    },
  },
};
</script>

<style scoped>
* {
  box-sizing: border-box;
}
body {
  font-family: "Lato";
}
input {
  border: 2px solid #85c4af;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
  border-radius: 50px;
  position: center;
}
input[type="text"] {
  background-color: #f1f1f1;
  background-position: 99% 100%;
  background-color: #f1f1f1;
  padding: 12px;
  font-size: 16px;
  border-radius: 50px;
  width: 700px;
  height: 30px;
  text-align: left;
}
.article
{
 display : inline-block;
 margin:2em;
 padding-left: 6.5em;
}
img{
  width: 400px;
  height: 400px;
}
.row
{
  justify-content: center;
}
h1
{
  font-size: 1.8em;
}
</style>
