<template>
  <div id="app">

    <div class="container main">
    <!-- Nav Bar appliqué sur toutes les pages - NAVBAR DE BASE -->
      <!-- <nav class="navbar navbar-expand navbar-dark bg-dark">
      <a href="/" class="navbar-brand">My Epitech Destination Test </a>
      <a href="/contact" class="navbar-brand">Contact </a>
      <a href="/test" class="navbar-brand">Test </a>
      <a href="/navtest" class="navbar-brand">Nav </a>
      <div class="navbar-nav mr-auto">
        <li class="nav-item">
          <router-link to="/home" class="nav-link">
            <font-awesome-icon icon="home" /> Accueil 
            </router-link>
        </li>
        <li v-if="showAdminBoard" class="nav-item">
          <router-link to="/admin" class="nav-link">Admin Board</router-link>
        </li>
        <li class="nav-item">
          <router-link v-if="currentUser" to="/user" class="nav-link">Utilisateur</router-link>
        </li>
      </div>

      <div v-if="!currentUser" class="navbar-nav ml-auto">
        <li class="nav-item">
          <router-link to="/register" class="nav-link">
            <font-awesome-icon icon="user-plus" /> S'enregistrer
          </router-link>
        </li>
        <li class="nav-item">
          <router-link to="/login" class="nav-link">
            <font-awesome-icon icon="sign-in-alt" /> Se connecter
          </router-link>
        </li>
      </div>

      <div v-if="currentUser" class="navbar-nav ml-auto">
        <li class="nav-item">
          <router-link to="/profile" class="nav-link">
            <font-awesome-icon icon="user" />
            {{ currentUser.username }}
          </router-link>
        </li>
        <li class="nav-item">
          <a class="nav-link" @click.prevent="logOut">
            <font-awesome-icon icon="sign-out-alt" /> Se déconnecter
          </a>
        </li>
      </div>
      </nav>  -->
<!-- ----------------------NAVBAR--------------------------------- -->
  <!-- <Header /> -->
<!-- ----------------------------COMPONENTS-------------------------------------- -->
  <router-view />
<!-- ----------------------------FOOTER-------------------------------------- -->
<!-- <Footer /> -->

    </div>
  </div>
</template>

<script>
// import Header from '@/components/Header.vue'
// import Footer from '@/components/Footer.vue'

export default {
  components: {
    // Header,
    // Footer
  },
  computed: {
    currentUser() {
      return this.$store.state.auth.user;
    },
    showAdminBoard() {
      if (this.currentUser && this.currentUser['roles']) {
        return this.currentUser['roles'].includes('ROLE_ADMIN');
      }

      return false;
    },
  },
  methods: {
    logOut() {
      this.$store.dispatch('auth/logout');
      this.$router.push('/login');
    },
  }
};
</script>

<style>
body{
  font-family: 'Lato';
}

#app{
  
  background-color: #fefefe;
}

.main{
    background-color: white;
    padding: 30px 10px;
    border-radius: 15px;
    box-shadow: 0 10px 50px -10px #d6d6d6;
}

</style>