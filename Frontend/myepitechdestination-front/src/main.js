import App from './App.vue';
import router from './router';
import { createApp } from "vue";
import store from "./store";
import { FontAwesomeIcon } from './plugins/font-awesome';
import "bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";

createApp(App)
  .use(router)
  .use(store)
  .component("font-awesome-icon", FontAwesomeIcon)
  .mount("#app");
