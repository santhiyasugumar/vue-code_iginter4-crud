import Vue from 'vue'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css'

Vue.use(Vuetify)

const opts = {
    theme: {
        light: true,
        themes: {
          dark: {
            primary: '#4d34cb',
            accent: '#30c9bd',
            secondary: '#1D1F48',
            success: '#4C5365',
            info: '#35aabc',
            warning: '#EB9147',
            error: '#da4d4f'
          },
          light: {
            primary: '#4d34cb',
            accent: '#30c9bd',
            secondary: '#1D1F48',
            success: '#4CAF50',
            info: '#35aabc',
            warning: '#EB9147',
            error: '#da4d4f'
          }
        }
      }
}

export default new Vuetify(opts)