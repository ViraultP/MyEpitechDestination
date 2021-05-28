<template>
  <div class="container">
    <div class="row">
      <img
        id="profile-img"
        class="profile-img-card"
      />
      <div class="col-md d-none d-lg-block">
        <img src="../assets/image-register-black.jpg" alt="register illustration" weight="auto">
      </div>

      <div class="col-md">
        <p class="register">Vous n'êtes pas membre ? <a href="/register">S'inscrire</a></p>
        <div class="info">
          <h2>Login</h2>
        
        <Form @submit="handleLogin" :validation-schema="schema">
          
          <div class="form-group">
            <label for="email" class="title">Email</label>
            <Field name="email" type="text" class="form-control" />
            <ErrorMessage name="email" class="error-feedback" />
          </div>

          <div class="form-group">
            <label for="mot_de_passe" class="title">Mot de passe</label>
            <Field name="mot_de_passe" type="password" class="form-control" />
            <ErrorMessage name="mot_de_passe" class="error-feedback" />
          </div>

          <div class="form-group">
            <button class="btn btn-primary btn-block" :disabled="loading">
              <span
                v-show="loading"
                class="spinner-border spinner-border-sm"
              ></span>
              <span>Login</span>
            </button>
          </div>

          <div class="form-group">
            <div v-if="message" class="alert alert-danger" role="alert">
              {{ message }}
            </div>
          </div>

        </Form>
        </div>
      </div>
      </div>
  </div>
</template>

<script>
import { Form, Field, ErrorMessage } from "vee-validate";
import * as yup from "yup";

export default {
  name: "Login",
  components: {
    Form,
    Field,
    ErrorMessage,
  },
  data() {
    const schema = yup.object().shape({
      email: yup.string().required("Un email est nécessaire!"),
      mot_de_passe: yup.string().required("Un mot de passe est nécessaire!"),
    });

    return {
      loading: false,
      message: "",
      schema,
    };
  },
  computed: {
    loggedIn() {
      return this.$store.state.auth.status.loggedIn;
    },
  },
  created() {
    if (this.loggedIn) {
      this.$router.push("/profile");
    }
  },
  methods: {
    handleLogin(user) {
      this.loading = true;

      this.$store.dispatch("auth/login", user).then(
        () => {
          this.$router.push("/profile");
        },
        (error) => {
          this.loading = false;
          this.message =
            (error.response &&
              error.response.data &&
              error.response.data.message) ||
            error.message ||
            error.toString();
        }
      );
    },
  },
};
</script>

<style scoped>
* {
    font-family: Lato;
} 

img{
 width: 100%;
height: auto;
}

.register{
    display: block;
    float: right
}

.register a{
    text-decoration: none;
    font-weight: bold;
    color: #278867;
}

.register a:hover{
    border-bottom: 2px solid #278867;
}

.infos{
    margin-top: 70px;
    margin-left: 20px;
    display: block;
    text-align: left;
}

h2{
    color: #278867;
    font-size: 2.3em;
    margin-bottom: 60px;
}

.title{
    margin-top: 10px;
    font-weight: lighter;
    font-size: 1.4em;
}

input{
    margin: 10px 0;
    border-bottom: 1px solid black;
    padding: 6px 6px;
    width: 90%;
}

.input:hover{
    border-bottom: 1px solid black;
}
button{
    margin-top: 40px;
    padding: 10px 30px;
    text-align: initial;
    background-color: #278867;
    border-radius: 6px;
}

button a{
    text-decoration: none;
    color: #ffffff;
    font-size: 19px;
}
</style>