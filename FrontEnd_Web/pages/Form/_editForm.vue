<template>
  <v-app id="page-forms">
    <v-container fluid>
      <v-layout row wrap>
        <v-flex lg12>
          <edit-form-component v-if="profileArray" :items="profileArray" @updateprofile="updateprofile" />
        </v-flex>
      </v-layout>
    </v-container>
  </v-app>
</template>
<script>

import EditFormComponent from '@/components/widgets/form/EditFormComponent'

export default {
  components: {
    EditFormComponent
  },
  layout: 'dashboard',
  data () {
    return {
      profileArray: null
    }
  },
  async mounted () {
    console.log('fetching')
    const response = await this.$axios.$get(`/testApi/${this.$route.params.editForm}/edit`)
    this.profileArray = response
  },
  methods: {
    async updateprofile (data) {
      const response = await this.$axios.$put(`/testApi/${this.$route.params.editForm}`, data)
      if (response.status && response.status === 201) {
        this.$router.push('/table')
      }
    }
  }
}
</script>
