<template>
  <div class="container">
    <div class="navbar first">
      <h1>Admin Dashboard</h1>
      <a href="/"><button>Accueil</button></a>
    </div>
    <div class="navbar second">
      <ul>
        <router-link class="links" to="/crudUtilisateurs"
          >Utilisateurs</router-link
        ><br />
        <router-link class="links" to="/crudArticles">Articles</router-link
        ><br />
        <router-link class="links" to="/crudcommentaires"
          >Commentaires</router-link
        >
      </ul>
    </div>
  </div>
</template>

<script>
import UserService from "../services/user.service";

export default {
  name: "Admin",
  data() {
    return {
      content: "",
    };
  },
  mounted() {
    UserService.getAdminBoard().then(
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

<style scoped>
* {
  font-family: "Lato";
}
.first {
  background-color: #85c4af57;
  border-radius: 6px;
  height: 80px;
}

.first button {
  background-color: transparent;
  padding: 5px 20px;
  margin: 0 20px;
  border: 3px solid #1b1b52;
  border-radius: 6px;
  font-weight: 500;
}

.first button:hover {
  background-color: #1b1b52;
  color: white;
  border: 1px solid #1b1b52;
}

.first h1 {
  font-size: 1.2em;
  margin: 0 20px;
  font-weight: 700;
  color: #1b1b52;
}

.second {
  display: block;
  text-align: center;
  margin-top: 20px;
}

.second ul {
  display: inline-flex;
}

.second .links {
  text-align: center;
  margin: 0 20px;
  text-decoration: none;
  color: black;
  font-family: "Lato";
  font-size: 1.2em;
}

.second .links:hover {
  border-bottom: 3px solid black;
}
</style>