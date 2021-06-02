<template>
  <div>
    <div class="navbar">
      <img src="../assets/logo-mydestinationepitech.png" class="logo" alt="" />
      <nav>
        <ul>
          <li v-if="showAdminBoard" class="nav-item">
            <router-link to="/admin" class="nav-link"
              ><img src="../assets/dashboard.png" alt="" width="30" height="30"
            /></router-link>
          </li>

          <li>
            <a href="/login"
              ><img src="../assets/user.svg" alt="" width="30" height="30" />
            </a>
          </li>
        </ul>
      </nav>
    </div>

    <div class="title">
      <h1>MY EPITECH DESTINATION</h1>
    </div>

    <ul class="nav justify-content-center">
      <li class="nav-item">
        <a class="nav-link" href="/">Accueil</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/destination">Destination</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="/contact">Contact</a>
      </li>
    </ul>
  </div>
</template>


<script>
import axios from "axios";
import UserService from "../services/user.service";
export default {
  name: "Header",
  computed: {
    navigation() {
      return this.$store.getters.navigation;
    },
    currentUser() {
      return this.$store.state.auth.user;
    },
    showAdminBoard() {
      if (this.currentUser && this.currentUser["roles"]) {
        return this.currentUser["roles"].includes("ROLE_ADMIN");
      }
      return false;
    },
  },
  components: {},
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
          "https://my-epitech-destination-api.herokuapp.com/api/filteruniversite?universite=" +
            this.universite
        )
        .then((resp) => {
          this.articles = resp;
        });
    },
    getAllcontinent() {
      //requete de tout les continent
      axios.get("https://my-epitech-destination-api.herokuapp.com/api/filter/continent").then((resp) => {
        this.continents = resp;
      });
    },
    getByVille() {
      //requete par une ville pour récuperer une université
      axios
        .get("https://my-epitech-destination-api.herokuapp.com/api/filterville?ville=" + this.ville)
        .then((resp) => {
          this.universite = resp;
        });
    },
    getByPays() {
      //requete par un pays pour recuperer une ville
      axios
        .get("https://my-epitech-destination-api.herokuapp.com/api/filterpays?pays=" + this.pays)
        .then((resp) => {
          this.ville = resp;
        });
    },
    getByContinent() {
      axios
        .get(
          "https://my-epitech-destination-api.herokuapp.com/api/filtercontinent?continent=" +
            this.continent
        )
        .then((resp) => {
          this.countries = resp;
          console.log(this.countries);
        });
    },
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
  font-family: "Bebas Neue", cursive;
}

.navbar {
  height: 12%;
  display: flex;
  align-items: center;
}

.logo {
  width: 50px;
  cursor: pointer;
  margin: 0 auto;
}

nav {
  flex: 1;
  text-align: right;
}

nav ul li {
  list-style: none;
  display: inline-block;
  margin-left: 40px;
}

.title h1 {
  display: block;
  text-align: center;
  font-size: 4.2em;
}

a {
  text-decoration: none;
  color: black;
  font-size: 2.6em;
}

a:hover {
  color: #85c4af;
}
</style>