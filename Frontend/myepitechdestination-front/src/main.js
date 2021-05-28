import '@babel/polyfill'
import 'mutationobserver-shim'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import router from './router'
import { createApp } from "vue";
import store from "./store";
import { FontAwesomeIcon } from './plugins/font-awesome'

Vue.config.productionTip = false

createApp(App)
  .use(router)
  .use(store)
  .component("font-awesome-icon", FontAwesomeIcon)
  .mount("#app");
