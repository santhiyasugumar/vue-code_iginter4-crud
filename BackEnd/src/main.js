// src/main.js
import '@babel/polyfill'
import Vue from 'vue'
import vuetify from './plugins/vuetify' // path to vuetify export
import './sass/custom.scss' // path to custom sass
import axios from 'axios';

// reference axios globally
window.axios = axios;
window.Vue = Vue;
window.vuetify = vuetify;