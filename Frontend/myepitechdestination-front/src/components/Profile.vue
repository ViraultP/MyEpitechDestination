<template>
  <div class="container">
    <div class="nav">
      <h4>Profile</h4>
      <div class="button">
        <a href="/"
          ><button>
            Accueil<i class="fa fa-arrow-right" aria-hidden="true"></i></button
        ></a>
      </div>
    </div>

    <div class="sidebar">
      <img src="../assets/user.svg" alt="" width="30" height="30" />
      <h3>Bonjour {{ currentUser.prénom }}</h3>
      <hr />
      <ul>
        <li>Vos articles</li>
        <li>Vos favoris</li>
      </ul>
      <div class="logout">
        <a class="nav-link" @click.prevent="logOut">
          <button>
            <font-awesome-icon icon="sign-out-alt" /> Se déconnecter
          </button>
        </a>
      </div>
    </div>

    <div class="informations">
      <h4 class="title-info">Vos informations</h4>
      <div class="infos">
        <ul>
          <li>Email : {{ currentUser.email }}</li>
          <li v-for="role in currentUser.roles" :key="role">
            Rôle : {{ role }}
          </li>
          <li>Id : {{ currentUser.id }}</li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Profile",
  computed: {
    currentUser() {
      return this.$store.state.auth.user;
    },
  },
  mounted() {
    if (!this.currentUser) {
      this.$router.push("/login");
    }
  },
  methods: {
    logOut() {
      this.$store.dispatch("auth/logout");
      this.$router.push("/login");
    },
  },
};
</script>

<style scoped>
.container {
  display: grid;
  grid-template-columns: 0.7fr 1fr 1fr 1fr;
  grid-template-rows: 0.5fr 1fr 1fr;
  gap: 0px 0px;
  grid-template-areas:
    "sidebar nav nav nav"
    "sidebar informations informations informations"
    "sidebar informations informations informations";
}
.nav {
  grid-area: nav;
  background-color: #e5e5e575;
  height: 100px;
  display: flex;
  align-items: center;
}

.nav h4 {
  margin: 0 15px;
  font-size: 1.3em;
  color: #7f7f7f;
}

.button {
  margin: 0 15px;
  flex: 1;
  text-align: right;
}

.button button {
  background-color: #85c4af;
  border: 2px solid #85c4af;
  color: white;
  border-radius: 6px;
  padding: 5px 10px;
  font-family: "Lato";
  font-weight: 500;
  font-size: 1.2em;
}

.fa-arrow-right {
  padding: 0 20px;
}

.button button:hover {
  background-color: transparent;
  border: 2px solid #85c4af;
  color: #85c4af;
}

.sidebar {
  grid-area: sidebar;
  background-color: #a8a7a775;
  text-align: center;
}

.sidebar img {
  margin: 20px 0;
}
.sidebar h3 {
  font-size: 1.6em;
}

.sidebar ul {
  list-style: none;
}

.sidebar ul li {
  margin: 10px 0;
  font-size: 1.2em;
  padding: 10px 0;
}

.sidebar ul li:hover {
  background-color: #e5e5e5;
}

.sidebar .logout {
  margin-top: 300px;
  margin-bottom: 25px;
}

.sidebar .logout button {
  background-color: #1b1b52;
  border-radius: 6px;
  padding: 10px 15px;
  color: white;
  border: none;
}

.informations {
  grid-area: informations;
}

.informations .title-info {
  font-size: 1.4em;
  margin-left: 20px;
  margin-bottom: 20px;
  font-weight: 700;
}

.infos {
  text-align: center;
}

.infos ul {
  list-style: none;
}

.infos ul li {
  line-height: 40px;
  text-align: justify;
  font-size: 1.1em;
}
</style>