<template>
  <div class="col-md-12">
    <div class="card card-container">
      <Form @submit="handleRegister" :validation-schema="schema">
        <div v-if="!successful">
          <div class="form-group">
            <label for="nom">Nom</label>
            <Field name="nom" type="text" class="form-control" />
            <ErrorMessage name="nom" class="error-feedback" />
          </div>
          <div class="form-group">
            <label for="prénom">Prénom</label>
            <Field name="prénom" type="text" class="form-control" />
            <ErrorMessage name="prénom" class="error-feedback" />
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <Field name="email" type="email" class="form-control" />
            <ErrorMessage name="email" class="error-feedback" />
          </div>
          <div class="form-group">
            <label for="mot_de_passe">Mot de passe</label>
            <Field name="mot_de_passe" type="password" class="form-control" />
            <ErrorMessage name="mot_de_passe" class="error-feedback" />
          </div>
          <div class="form-group">
            <button class="btn btn-primary btn-block" :disabled="loading">
              <span
                v-show="loading"
                class="spinner-border spinner-border-sm"
              ></span>
              S'enregistrer
            </button>
          </div>
        </div>
      </Form>

      <div
        v-if="message"
        class="alert"
        :class="successful ? 'alert-success' : 'alert-danger'"
      >
        {{ message }}
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
