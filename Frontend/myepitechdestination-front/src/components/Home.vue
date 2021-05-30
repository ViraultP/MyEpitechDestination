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
};
</script>