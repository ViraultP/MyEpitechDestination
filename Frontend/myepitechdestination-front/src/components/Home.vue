<template>
  <div class="container">
    <header class="jumbotron">
      <p>Components Home.vu</p>
      <Test />
      <h3>{{ content }}</h3>
    </header>
    <router-link to="contact" class="nav-item r-item">Contact</router-link>
  </div>
</template>

<script>
import axios from 'axios';
import UserService from "../services/user.service";
import Test from "./Test";
export default {
  components: {
    Test
  },
  name: "Home",
  data() {
    return {
      content: "",
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
      this.getByUniversite()
      this.getAllcontinent()
      this.getByVille()
      this.getByPays()
      this.getByContinent()
      this.searchBar()
    },
    methods: 
  {
      getByUniversite() 
      {
        axios.get('http://localhost:8080/api/filteruniversite?universite='+"resultat du bouton select")
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
      getAllcontinent() 
      {
        axios.get('http://localhost:8080/api/filter/continent')
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
      getByVille() 
      {
        axios.get('http://localhost:8080/api/filterville?ville='+"resultat du bouton select")
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
      getByPays() 
      {
        axios.get('http://localhost:8080/api/filterpays?pays='+"resultat du bouton select")
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
      getByContinent() 
      {
        axios.get('http://localhost:8080/api/filtercontinent?continent='+"resultat du bouton select")
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
      searchBar()
      {
        axios.get('http://localhost:8080/api/search?recherche='+"recupere la valeur du la abrre de recherche")
        .then((resp) => {
          this.data = resp
          console.log(this.data.data)
          })
      },
}
};
</script>