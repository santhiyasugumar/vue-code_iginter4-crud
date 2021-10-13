<template>
  <v-app>
    <v-form
      ref="form"
      v-model="valid"
      lazy-validation
    >
      <h1 class="title">
        Edit Form
      </h1>
      <v-text-field
        v-model="name"
        :counter="10"
        :rules="nameRules"
        label="Name"
        required
      />

      <v-text-field
        v-model="position"
        :rules="positionRules"
        label="Position"
        required
      />
      <v-btn
        :disabled="!valid"
        color="success"
        class="mr-4"
        @click="validate"
      >
        Update
      </v-btn>
    </v-form>
  </v-app>
</template>

<script>
export default {
  props: {
    items: {
      type: Object,
      required: true
    }
  },
  data: () => ({
    valid: true,
    name: '',
    nameRules: [
      v => !!v || 'Name is required',
      v => (v && v.length <= 10) || 'Name must be less than 10 characters'
    ],
    position: '',
    positionRules: [
      v => !!v || 'Position is required',
      v => (v && v.length <= 10) || 'Name must be less than 10 characters'
    ],
    checkbox: false
  }),
  mounted () {
    this.name = this.items.name
    this.position = this.items.position
  },
  methods: {
    validate () {
      if (this.$refs.form.validate()) {
        this.$emit('updateprofile', { name: this.name, position: this.position })
      }
    },
    reset () {
      this.$refs.form.reset()
    },
    resetValidation () {
      this.$refs.form.resetValidation()
    }
  }
}
</script>
