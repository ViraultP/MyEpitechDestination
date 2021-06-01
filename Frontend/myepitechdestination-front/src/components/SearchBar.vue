<template>
  <div>
    <div id="autocomplete" class="autocomplete">
      <div class="autocomplete" style="">
        <input
          type="text"
          name=""
          placeholder="Explore"
          v-model="query"
          @keyup="searchBar(query)"
        />
        <div v-for="article in data.data" :key="article">
          {{ article.titre }}
          {{ article.description }}
          <img :src="'http://localhost:8080/' + article.image" width="250" />
        </div>
        <select v-model="continent" @change="getByContinent()">
          <option v-for="continent in continents.data" :key="continent.id">
            {{ continent.continent }}
          </option></select
        ><br />
        <div v-for="country in countries.data" :key="country.id">
          <select v-model="pays" @change="getByPays()">
            <option v-for="pays in country.etats" :key="pays.id">
              {{ pays.pays }}
            </option></select
          ><br />
        </div>
        <div>
          <select v-model="ville" @change="getByVille()">
            <option v-for="ville in ville.data" :key="ville.id">
              {{ ville.nom }}
            </option></select
          ><br />
        </div>
        <div>
          <select v-model="universite" @change="getByUniversite()">
            <option v-for="ecole in universite.data" :key="ecole.id">
              {{ ecole.nom }}
            </option></select
          ><br />
        </div>
        <div v-for="article in articles.data" :key="article.id">
          <div>{{ article.titre }}</div>
          <br />
          <div>{{ article.description }}</div>
          <br />
          <div>
            <img :src="'http://localhost:8080/' + article.image" width="250" />
          </div>
          <br />
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
    this.getByUniversite();
    this.getAllcontinent();
    this.getByVille();
    this.getByPays();
    this.getByContinent();
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
.autocomplete {
  /*the container must be positioned relative:*/
  position: relative;
  display: inline-block;
  width: 1000px;
}
input {
  border: 1px solid black;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
  border-radius: 50px;
}
input[type="text"] {
  background-color: #f1f1f1;
  width: 100%;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid black;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}
.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: black;
}
.autocomplete-items div:hover {
  /*when hovering an item:*/
  background-color: #e9e9e9;
}
.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00b4cc;
  background: #00b4cc;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}
</style>

