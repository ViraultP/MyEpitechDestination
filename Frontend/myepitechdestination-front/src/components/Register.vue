<template>
  <div class="container">
    <div class="row">
      <div class="col-md d-none d-lg-block">
        <img src="../assets/image-register-black.jpg" alt="register illustration" weight="auto">
      </div>

      <div class="col-md">
        <p class="register">Déjà membre ? <a href="/login">Se connecter</a></p>
        <div class="info">
          <h2>Créer un compte</h2>
        <Form @submit="handleRegister" :validation-schema="schema">
          <div v-if="!successful">

              <div class="form-group">
                <label for="nom" class="title">Nom</label>
                <Field name="nom" type="text" class="form-control" />
                <ErrorMessage name="nom" class="error-feedback" />
              </div>

              <div class="form-group">
                <label for="prénom" class="title">Prénom</label>
                <Field name="prénom" type="text" class="form-control" />
                <ErrorMessage name="prénom" class="error-feedback" />
              </div>

              <div class="form-group">
                <label for="email" class="title">Email</label>
                <Field name="email" type="email" class="form-control" />
                <ErrorMessage name="email" class="error-feedback" />
              </div>

              <div class="form-group">
                <label for="mot_de_passe" class="title">Mot de passe</label>
                <Field name="mot_de_passe" type="password" class="form-control" />
                <ErrorMessage name="mot_de_passe" class="error-feedback" />
              </div>

              <div class="form-group">
                <button :disabled="loading">
                  <span
                    v-show="loading"
                  ></span>
                  <a href="#">S'enregistrer</a> 
                </button>
              </div>

            </div>
          </Form>
        </div>

        <div
          v-if="message"
          class="alert"
          :class="successful ? 'alert-success' : 'alert-danger'"
        >
          {{ message }}
        </div>

      </div>
    </div>
  </div>
</template>

<script>
import { Form, Field, ErrorMessage } from "vee-validate";
import * as yup from "yup";
export default {
  name: "Register",
  components: {
    Form,
    Field,
    ErrorMessage,
  },
  data() {
    const schema = yup.object().shape({
      nom: yup
        .string()
        .required("Un nom est nécessaire!"),
      prénom: yup
        .string()
        .required("Un prénom est nécessaire!"),
      email: yup
        .string()
        .required("Un email est nécessaire!")
        .email("Email invalide!")
        .max(50, "L'email doit contenir maximum 50 caractères!"),
      mot_de_passe: yup
        .string()
        .required("Un mot de passe est nécessaire!")
        .min(6, "Il doit y avoir un minimum de 6 caractères!")
        .max(40, "Il doit y avoir un maximum de 40 caractères!"),
    });
    return {
      successful: false,
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
  mounted() {
    if (this.loggedIn) {
      this.$router.push("/profile");
    }
  },
  methods: {
    handleRegister(user) {
      this.message = "";
      this.successful = false;
      this.loading = true;
      this.$store.dispatch("auth/register", user).then(
        (data) => {
          this.message = data.message;
          this.successful = true;
          this.loading = false;
        },
        (error) => {
          this.message =
            (error.response &&
              error.response.data &&
              error.response.data.message) ||
            error.message ||
            error.toString();
          this.successful = false;
          this.loading = false;
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