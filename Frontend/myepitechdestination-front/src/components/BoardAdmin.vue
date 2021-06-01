<template>
  <div class="container">
    <div class="row">
      <div class="col sidebar">
      <div class="header">
        <div class="dashboard"><h4>Admin Dashboard</h4></div>
      </div>
      <div class="list">
        <ul>
          <li>Utilisateurs</li>
          <li>Articles</li>
          <li>Commentaires</li>
        </ul>
      </div>
    </div>
    <div class="col">
      <div class="row">
        
      </div>
    </div>
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
*{
  font-family: 'Lato';
}
.sidebar{
    width: 100%;
    max-width: 250px;
    min-height: 50vh;
    background-color: #d2d2d2;
}

.dashboard{
    display: flex;
    width: 100%;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 100px;
    background-color: #a3a3a3;
}

.list ul li{
  list-style: none;
  padding: 20px 10px;
  font-size: 1.2em;
}

</style>