<template>
  <div class="container">
    <Header />
    <header class="jumbotron">
      <SearchBar />
    </header>
    <!-- <router-link to="contact" class="nav-item r-item">Contact</router-link> -->
    <div class="Map">
      <iframe
        src="https://www.google.com/maps/d/embed?mid=1YvBZhsgchrEpeuMUUCI0mR_kQXGU-OyD"
        width="900"
        height="675"
      ></iframe>
    </div>
    <div class="titre"><h1>Les articles récents</h1></div>
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <div v-for="article in articles" v-bind:key="article.id" class="col">
        <div id="card" class="card h-100">
          <a :href="'/article/' + article.id"
            ><img :src="'http://localhost:8080/' + article.image" width="400"
          /></a>

          <div class="card-body">
            <div class="title-heart">
              <h5 class="card-title">{{ article.titre }}</h5>
            </div>
            <p class="card-text">Prénom Nom | 06 Juillet 2020</p>
          </div>
        </div>
      </div>
    </div>
    <Footer />
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import SearchBar from "./SearchBar";
import Footer from "@/components/Footer.vue";
import axios from "axios";

export default {
  name: "Home",
  components: {
    SearchBar,
    Header,
    Footer,
  },
  data() {
    return {
      articles: "",
    };
  },
  created() {
    this.fetcharticles();
  },
  methods: {
    fetcharticles() {
      axios
        .get("http://localhost:8080/api/lastarticles")
        .then((data) => (this.articles = data.data));
    },
  },
};
</script>

<style scoped>
.row-cols-1 {
  margin-bottom: 150px;
}
#card {
  background-color: #1b1b52;
  height: auto;
  border: none;
  margin: 20px;
}
#card img {
  width: 100%;
  height: auto;
}
.card-body {
  font-family: "Lato";
  color: white;
}

.Map {
  box-sizing: border-box;
  position: relative;
  text-align: center;
  margin: 50px 0px;
}
.titre h1 {
  font-family: "Lato";
  font-weight: lighter;
}
</style>