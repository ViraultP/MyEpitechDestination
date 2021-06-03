<template>
  <div class="container">
    <Header />
    <Dropdown />
    <div class="row header">
      <a href="/destination"
        ><i class="fa fa-long-arrow-left fa-4x" aria-hidden="true"></i
      ></a>
      <h1>{{ article.titre }}</h1>
    </div>

    <div class="row image">
      <img :src="'https://my-epitech-destination-api.herokuapp.com/' + article.image" width="400" />
    </div>
    <div class="row infos">
    </div>
    <div class="row description">
      <p>{{ article.description }}</p>
      <hr />
    </div>

    <div class="row">
      <div class="evaluation">
        <h1>Cet article est utile ?</h1>
      </div>
    </div>

    <div class="container">
      <div class="comment">
        <h1>Laisser un commentaire</h1>
        <form action="" class="create-comment">
          <label class="nom" for="name">Nom</label>
          <input type="text" />
          <div class="row">
            <textarea placeholder="Ecrire un commentaire..." type="text" />
          </div>
          <button>Envoyer</button>
        </form>
      </div>
    </div>

    <div
      class="container"
      v-for="commentaire in article.commentaires"
      v-bind:key="commentaire.id"
    >
      <div class="all-comments">
        <hr />
        <h4>{{ commentaire.nom }}</h4>
        <h6>{{ commentaire.createdAt }}</h6>
        <p>{{ commentaire.commentaire }}</p>
      </div>
    </div>
    <Footer />
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Dropdown from "./Dropdown";
import Footer from "@/components/Footer.vue";
import axios from "axios";

export default {
  name: "Destination",
  components: {
    Header,
    Dropdown,
    Footer,
  },
  data() {
    return {
      article: {},
    };
  },
  created() {
    this.fetcharticle();
  },
  methods: {
    fetcharticle() {
      axios
        .get("https://my-epitech-destination-api.herokuapp.com/api/articles/" + this.$route.params.id)
        .then((data) => (this.article = data.data));
      console.log(this.article);
    },
  },
};
</script>


<style scoped>
.header .fa-long-arrow-left {
  width: 150px;
  margin-bottom: 50px;
  color: black;
}

.header .fa-long-arrow-left a {
  text-decoration: none;
}

.header .fa-long-arrow-left:hover {
  color: #85c4af;
}

.header h1 {
  font-family: "Bebas Neue", cursive;
  font-size: 2.6em;
}

.image {
  width: 100%;
  margin-bottom: 10px;
}

.infos p {
  margin-top: 10px;
  font-family: "Lato";
  font-size: 1.2em;
  font-weight: l;
}

.description p {
  text-align: justify;
  font-family: "Lato";
  font-size: 1.4em;
  line-height: 2em;
}

.evaluation {
  width: 100%;
  height: 12%;
  display: flex;
  align-items: center;
  margin-bottom: 50px;
}

.evaluation h1 {
  font-family: "Bebas Neue", cursive;
  font-size: 2.3em;
}

.evaluation .stars {
  flex: 1;
  text-align: right;
}

.stars {
  list-style: none;
  display: inline-flex;
  cursor: pointer;
}

.fa-star-o {
  flex: 1;
  text-align: right;
}

.stars li {
  float: right;
  padding: 10px 4px 0px 4px;
  color: #85c4af;
}

.comment h1 {
  font-family: "Bebas Neue", cursive;
  font-size: 2.3em;
}

.create-comment {
  font-family: "Lato";
}

.create-comment .nom {
  font-size: 1.2em;
}

.create-comment input {
  display: flex;
  border: none;
  outline: none;
  border-bottom: 2px solid black;
  margin-bottom: 15px;
}

.create-comment textarea {
  resize: none;
  height: 150px;
}

.create-comment button {
  margin: 20px 0;
  background-color: #85c4af;
  padding: 10px 20px;
  color: white;
  border: none;
  border-radius: 10px;
  font-size: 1.2em;
}

.comment h1 {
  font-family: "Bebas Neue", cursive;
  font-size: 2.3em;
}

hr {
  color: #85c4af;
}

.all-comments {
  font-family: "Lato";
}

.all-comments h4 {
  font-weight: bold;
  margin-top: 25px;
}

.all-comments h6 {
  font-weight: lighter;
  color: #7f7f7f;
  font-weight: lighter;
  font-size: 1.2em;
}

.all-comments p {
  margin: 50px 0;
  font-size: 1.4em;
  line-height: 1.7em;
  text-align: justify;
}
</style>