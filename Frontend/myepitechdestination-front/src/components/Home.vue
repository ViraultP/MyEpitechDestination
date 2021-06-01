<template>
  <div class="container">
    <Header />
    <header class="jumbotron">
      <SearchBar />
    </header>
    <Footer />
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
  },
};
</script>