<template>
  <v-app>
    <div>
      <v-card class="mb-5">
        <v-card-title>
          All User
          <v-spacer />
          <v-text-field
            v-model="search"
            append-icon="mdi-magnify"
            label="Search"
            single-line
            hide-details
          />
        </v-card-title>
        <v-data-table
          :headers="headers"
          :items="profiledetails"
          :search="search"
        >
          <template #[`item.actions`]="{ item }">
            <v-icon
              small
              class="mr-2"
              @click="editItem(item)"
            >
              mdi-pencil
            </v-icon>
            <v-icon
              small
              class="mr-2"
              @click="deleteItem(item)"
            >
              mdi-delete
            </v-icon>
          </template>
        </v-data-table>
      </v-card>
      <h2>List all data from API</h2>
      <div>
        <ul v-for="mountain in mountains" :key="mountain.slug">
          <li>{{ mountain.title }}</li>
        </ul>
      </div>
    </div>
  </v-app>
</template>

<script>
export default {
  layout: 'dashboard',
  data () {
    return {
      search: '',
      headers: [
        { text: 'Name', value: 'name' },
        { text: 'Position', value: 'position' },
        { text: 'Actions', value: 'actions', sortable: false }
      ],
      editedIndex: -1,
      mountains: [],
      profiledetails: []
    }
  },
  mounted () {
    console.log('fetching')
    const mp1 = this.$axios.$get('https://api.nuxtjs.dev/mountains')
    const mp2 = this.$axios.$get('/testApi')
    // this.mountains = await this.$axios.$get('https://api.jsonbin.io/v3b/6136f6f1dfe0cf16eb564be6/1', {
    //   headers: {
    //     'X-Master-Key': '$2b$10$.SQdTxk6nmudpW.IwUfusu/t3OYf1IZezJIP7qqrLyFFcjUab6bgi'
    //   }
    // })
    Promise.all([mp1, mp2]).then((values) => { // use promise all
      this.mountains = values[0]
      this.profiledetails = values[1]
    })
  },
  methods: {
    editItem (item) {
      this.editedIndex = this.profiledetails.indexOf(item)
      this.editedItem = Object.assign({}, item) // The Object.assign() method only copies enumerable and own properties from a source object to a target object.
      this.$router.push('/form/' + this.editedItem.id)
    },
    async deleteItem (item) {
      const response = await this.$axios.post('/testApi', item)
      if (response.status && response.status === 201) {
        // empty
      }
    }
  }
}
</script>
