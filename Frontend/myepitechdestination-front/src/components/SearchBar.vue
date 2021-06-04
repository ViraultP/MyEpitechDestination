<template>
  <div class="container">
    <div class="container searchbar">

      <div class="row">
        <div class="nav justify-content-center">
          <input
            type="text"
            name=""
            placeholder="Explore"
            v-model="query"
            @keyup="searchBar(query)"
          />
        </div>
      </div>

      <div class="result-search">

        <div class="resulat" v-for="article in data.data" :key="article">
          <div class="result-main">
            <h1>{{ article.titre }}</h1>
            <img :src="'http://localhost:8080/' + article.image" width="250" />
            <div class="button">
              <a :href="'/article/' + article.id"><button>Voir l'article</button></a>
        </div>
        </div>
        </div>

        <div v-for="article in articles.data" :key="article.id" class="resulat2">
            <div>{{ article.titre }}</div>
            <!-- <div>{{ article.description }}</div> -->
            <div>
              <img
                :src="'http://localhost:8080/' + article.image"
                width="250"
              />
              
            </div>
          </div>
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
      continents: [],
      countries: [],
      ville: [],
      universite: [],
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
    getByUniversite() {
      //requete d'une universite pour recupere les article associer
      axios
        .get(
          "http://localhost:8080/api/filteruniversite?universite=" +
            this.universite
        )
        .then((resp) => {
          this.articles = resp;
        });
    },
    getAllcontinent() {
      //requete de tout les continent
      axios.get("http://localhost:8080/api/filter/continent").then((resp) => {
        this.continents = resp;
      });
    },
    getByVille() {
      //requete par une ville pour récuperer une université
      axios
        .get("http://localhost:8080/api/filterville?ville=" + this.ville)
        .then((resp) => {
          this.universite = resp;
        });
    },
    getByPays() {
      //requete par un pays pour recuperer une ville
      axios
        .get("http://localhost:8080/api/filterpays?pays=" + this.pays)
        .then((resp) => {
          this.ville = resp;
        });
    },
    getByContinent() {
      axios
        .get(
          "http://localhost:8080/api/filtercontinent?continent=" +
            this.continent
        )
        .then((resp) => {
          this.countries = resp;
          console.log(this.countries);
        });
    },
    searchBar(query) {
      axios
        .get("http://localhost:8080/api/search?recherche=" + query)
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
  text-align: left;
}

.result-search{
 /* border: 1px solid black; */
 text-align: center;
 margin: 40px 0;
}

.resulat1{
  border: 1px solid black;
}

.result-main {
  display: block;
}

.result-main .button button {
  margin-top: 20px;
  /* margin-left: 40px; */
  padding: 10px 40px;
  border-radius: 10px;
  background-color: #1b1b52;
  color: white;
  border: none;
  font-family: "Lato";
}

.result-main .button button:hover {
  background-color: white;
  border: 2px solid #1b1b52;
  color: #1b1b52;
}
</style>
