import axios from 'axios'
axios.defaults.headers.post['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').content
axios.defaults.headers.put['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').content
window.axios = axios

import { createApp } from 'vue'
import router from './router'
import App from './App.vue'
const app = createApp(App)
app.use(router)
app.mount("#app")