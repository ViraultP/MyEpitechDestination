<template>
  <div class="container">
     <Header />
    <header class="jumbotron">
      <p>Components Home.vu</p>
<<<<<<< HEAD
      <SearchBar />
    </header>
    <!-- <router-link to="contact" class="nav-item r-item">Contact</router-link> -->
    <Footer />
=======
      <Test />
      <h3>{{ content }}</h3>
    </header>
    <router-link to="contact" class="nav-item r-item">Contact</router-link>
    <input type="text" v-model="query" @keyup="searchBar(query)" />
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
      ><br/>
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
>>>>>>> Back-End
  </div>
</template>

<script>
<<<<<<< HEAD
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import SearchBar from "./SearchBar";
=======
import UserService from "../services/user.service";
import Test from "./Test";
import axios from "axios"
>>>>>>> Back-End

export default {
  components: {
    Test
  },
  name: "Home",
<<<<<<< HEAD
  components: {
    SearchBar,
    Header,
    Footer
  },
=======
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
>>>>>>> Back-End
};
</script>