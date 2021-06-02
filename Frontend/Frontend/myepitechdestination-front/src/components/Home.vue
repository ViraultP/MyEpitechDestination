<template>
  <div class="container">
    <Header />
    <header class="jumbotron">
      <SearchBar />
    </header>
    <Footer />
       <div v-for="article in lastArticle.data" :key="article.id">
      <div>{{ article.auteur }}</div>
      <div>{{ article.titre }}</div>
      <br />
      <div>{{ article.description }}</div>
      <br />
      <div>
        <img :src="'http://localhost:8080/' + article.image" width="250" />
      </div>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Footer from "@/components/Footer.vue";
import SearchBar from "./SearchBar";

export default {
  name: "Home",
  components: {
    SearchBar,
    Header,
    Footer,
    lastArticle: [],
  },
};
</script>