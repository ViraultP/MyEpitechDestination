<template>
  <div class="container all-dropdown">
    <div class="row">
      <div class="col-sm dropdown">
        <select v-model="continent" @change="getByContinent()">
          <option v-for="continent in continents.data" :key="continent.id">
            {{ continent.continent }}
          </option>
        </select>
      </div>

      <div class="col-sm dropdown">
        <div v-for="country in countries.data" :key="country.id">
          <select v-model="pays" @change="getByPays()">
            <option v-for="pays in country.etats" :key="pays.id">
              {{ pays.pays }}
            </option>
          </select>
        </div>
      </div>

      <div class="col-sm dropdown">
        <div>
          <select v-model="ville" @change="getByVille()">
            <option v-for="ville in ville.data" :key="ville.id">
              {{ ville.nom }}
            </option>
          </select>
        </div>
      </div>

      <div class="col-sm dropdown">
        <div>
          <select v-model="universite" @change="getByUniversite()">
            <option v-for="ecole in universite.data" :key="ecole.id">
              {{ ecole.nom }}
            </option>
          </select>
        </div>
      </div>
    </div>

    <div class="search-result">
      <div v-for="article in articles.data" :key="article.id">
        <h2 class="result-title">Résultat de la recherche</h2>
        <div class="title">
          {{ article.titre }}
        </div>
        <div class="image">
          <img :src="'https://my-epitech-destination-api.herokuapp.com/' + article.image" width="250" />
        </div>
        <div class="button">
          <a :href="'/article/' + article.id"
            ><button>Voir l'article</button></a
          >
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import UserService from "../services/user.service";
export default {
  name: "TestDropdown",
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
.all-dropdown {
  padding: 0 80px;
}
.dropdown {
  display: inline-flex;
  text-align: center;
}

.dropdown select {
  border: none;
  border-bottom: 2px solid black;
  padding: 10px 20px;
  width: 250px;
  font-size: 1.3em;
}

.dropdown option {
  font-size: 1em;
  font-weight: lighter;
  border: none;
}

.search-result {
  margin-top: 30px;
  margin-bottom: 20px;
  /* background-color: #D9D9D9; */
  display: block;
  text-align: center;
}

.result-title {
  display: flex;
  font-size: 1.4em;
  color: #7f807a;
  font-weight: lighter;
}

.search-result .title {
  margin-top: 25px;
  margin-bottom: 10px;
  font-size: 1.9em;
}

.search-result .button {
  margin: 10px 20px;
}

.search-result .button button {
  padding: 10px 70px;
  border-radius: 10px;
  background-color: #1b1b52;
  color: white;
  border: none;
  font-family: "Lato";
}

.search-result .button button:hover {
  background-color: white;
  border: 2px solid #1b1b52;
  color: #1b1b52;
}
</style>