<template>
  <div class="container">
     <Header />
    <header class="jumbotron">
      <p>Components Home.vu</p>
      <SearchBar />
    </header>
    <!-- <router-link to="contact" class="nav-item r-item">Contact</router-link> -->
    <Footer />
  </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Footer from '@/components/Footer.vue'
import SearchBar from "./SearchBar";

export default {

  name: "Home",
  components: {
    SearchBar,
    Header,
    Footer
  },
};
</script>