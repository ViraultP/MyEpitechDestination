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
    <div class="titre"><h1>Les derniers articles</h1></div>
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <div v-for="article in articles.data" v-bind:key="article.id" class="col">
        <div id="card" class="card h-100">
          <a :href="'/article/' + article.id"
            ><img :src="'https://my-epitech-destination-api.herokuapp.com/' + article.image"
          /></a>
          <div class="card-body">
            <div class="title-heart">
              <h5 class="card-title">{{ article.titre }}</h5>
            </div><br>
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
    this.getLastArticle();
  },
  methods: {
   getLastArticle() {
      axios.get("https://my-epitech-destination-api.herokuapp.com/api/lastarticles").then((resp) => {
        this.articles = resp;
        console.log(this.data.data);
      });
    },
  },
};
</script>

<style scoped>
.row-cols-1 {
  margin-bottom: 7em;
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
  height: 2em;
  margin-bottom: 2em;
}

.Map {
  box-sizing: border-box;
  position: relative;
  text-align: center;
  margin: 50px 0px;
}
.titre h1 {
  font-family: "Lato";
  font-weight: bolder;
  font-size: 2em;
  text-align: center;
}
a
{
  height: 100%;
}
img
{
  width: 100%;
}
</style>
