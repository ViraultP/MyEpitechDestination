<template>
    <div>
        <div class="navbar">
        <h1>MY EPITECH DESTINATION</h1>
        <a href="/login"><img src="../assets/user.svg" alt="" width="50" height="50" /> </a>
      </div>

      <ul class="nav justify-content-center">
        <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#">ACCUEIL</a>
        </li>

        <li class="nav-item" v-for="(item, index) in navigation" :key="'item'+index">
        <a class="nav-link" href="#" @click="item.open = !item.open">{{item.title}}</a>
        </li>
        
        <li class="nav-item">
        <a class="nav-link" href="#">CONTACT</a>
        </li>
      </ul>
      <Dropdown />
    </div>
</template>


export default {
    
}
<script>
import Dropdown from './Dropdown'

export default {
    name: 'Header',
    computed: {
        navigation() {
            return this.$store.getters.navigation;
        }
    },
    components: {
        Dropdown
    }
}
</script>

<style scoped>
*{
    font-family:'Bebas Neue', cursive;
}
.navbar h1{
    display: block;
    margin: 0 auto;
    color: green;
    padding-left: 60px;
    font-size: 3.2em;

}

a{
    text-decoration: none;
    color: black;
    font-size: 1.9em;
}

a:hover{
    color: green;
}
</style>