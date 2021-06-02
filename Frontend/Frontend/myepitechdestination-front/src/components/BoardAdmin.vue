<template>
  <div class="container">
    <nav class="navbar">
      <div class="navbar-left">
        <a class="active-link" href="#">Admin</a>
      </div>
      <div class="navbar-right">
        <a href="/">
          <button>ACCUEIL</button>
        </a>
      </div>
    </nav>

    <main>
      <div class="main-container">
        <div class="main-title">
          <div class="main-text">
            <h1>Gestion des utilisateurs</h1>
          </div>
        </div>

        <div class="crud">
          <div class="crud-right">
            <div class="crud-right-title">
              <div>
                <h1>Main</h1>
                <p></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>

    <div id="sidebar">
      <div class="sidebar-title">
        <h1>Dashboard</h1>
      </div>

      <div class="sidebar-menu">
        <div class="sidebar-link">
          <a href="#">Utisateurs</a>
        </div>
        <div class="sidebar-link">
          <a href="#">Articles</a>
        </div>
        <div class="sidebar-link">
          <a href="#">Commentaires</a>
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
* {
  font-family: "Lato";
}

* {
  margin: 0;
  padding: 0;
}

body {
  box-sizing: border-box;
}

.container {
  display: grid;
  height: 100vh;
  grid-template-columns: 0.8fr 1fr 1fr 1fr;
  grid-template-rows: 0.2fr 3fr;
  grid-template-areas:
    "sidebar nav nav nav"
    "sidebar main main main";
}

.navbar {
  background: #ffffff;
  grid-area: nav;
  height: 60px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 30px 0 30px;
  border-bottom: 1px solid lightgray;
}

.navbar-left a {
  margin-right: 30px;
  text-decoration: none;
  color: #a5aaad;
  font-size: 15px;
  font-weight: bold;
}

.navbar-right {
  display: flex;
  justify-content: center;
  align-items: center;
}

.navbar-right button {
  background-color: transparent;
  border: 1px solid #85c4af;
  border-radius: 15px;
  padding: 10px 20px;
  font-weight: 700;
}

main {
  background: #f3f4f6;
  grid-area: main;
  overflow-y: auto;
}

.main-container {
  padding: 20px 35px;
}

.main-title {
  display: flex;
  align-items: center;
}

.main-text h1 {
  font-size: 24px;
  color: #e61b98;
  margin-bottom: 5px;
}

.main-text p {
  font-size: 14px;
  font-weight: 700;
  color: #a5aaad;
}

.card_inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.card_inner > span {
  font-size: 25px;
}

.crud {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 30px;
  margin-top: 50px;
}

.crud-right {
  padding: 25px;
  border-radius: 5px;
  background: #ffffff;
  box-shadow: 5px 5px 13px #ededed, -5px -5px 13px #ffffff;
}

.crud-right-title {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.crud-right-title h1 {
  font-size: 24px;
  color: red;
  margin-bottom: 5px;
}

.crud-right-cards {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 20px;
  margin-top: 30px;
}

/* *****************************************************/
#sidebar {
  background: #f2f2f2;
  grid-area: sidebar;
  overflow-y: auto;
  padding: 0px;
}

.sidebar-title {
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: black;
  margin-bottom: 30px;
  padding: 10px;
}

.sidebar-link {
  color: #f3f4f6;
  padding: 20px 10px;
  border-radius: 3px;
  margin-bottom: 5px;
}

.sidebar-link:hover {
  background-color: #85c4af;
  color: black;
}

.sidebar-link a {
  text-decoration: none;
  color: black;
  font-weight: 500;
  font-size: 1.3em;
}

.sidebar_responsive {
  display: inline !important;
  z-index: 9999 !important;
  left: 0 !important;
  position: absolute;
}

/* *****************************************************/
@media only screen and (max-width: 978px) {
  .container {
    grid-template-columns: 1fr;
    /* grid-template-rows: 0.2fr 2.2fr; */
    grid-template-rows: 0.2fr 3fr;
    grid-template-areas:
      "nav"
      "main";
  }

  #sidebar {
    display: none;
  }

  .sidebar__title > i {
    display: inline;
  }

  .nav_icon {
    display: inline;
  }
}

@media only screen and (max-width: 855px) {
  .main__cards {
    grid-template-columns: 1fr;
    gap: 10px;
    margin-bottom: 0;
  }

  .charts {
    grid-template-columns: 1fr;
    margin-top: 30px;
  }
}

@media only screen and (max-width: 480px) {
  .navbar__left {
    display: none;
  }
}
</style>