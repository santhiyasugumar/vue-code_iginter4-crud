<template>
  <v-app id="page-forms">
    <v-container fluid>
      <v-layout row wrap>
        <v-flex lg12>
          <add-form-component @addprofile="addprofile" />
        </v-flex>
      </v-layout>
    </v-container>
  </v-app>
</template>
<script>

import AddFormComponent from '@/components/widgets/form/AddFormComponent'

export default {
  components: {
    AddFormComponent
  },
  layout: 'dashboard',
  computed: {},
  methods: {
    async addprofile (data) {
      const response = await this.$axios.post('/testApi', data)
      if (response.status && response.status === 201) {
        alert('Inserted Successfully')
      }
    }
  }
}
</script>
