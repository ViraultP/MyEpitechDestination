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
import SearchBar from "./SearchBar";
import Footer from "@/components/Footer.vue";
export default {
  components: {
    SearchBar,
    Header,
    Footer,
  },
  name: "Home",
};
</script>