<template>
  <v-app>
    <v-form
      ref="form"
      v-model="valid"
      lazy-validation
    >
      <h1 class="title">
        Add Form
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
        Save
      </v-btn>

      <v-btn
        color="error"
        class="mr-4"
        @click="reset"
      >
        Reset Form
      </v-btn>

      <v-btn
        color="warning"
        @click="resetValidation"
      >
        Reset Validation
      </v-btn>
    </v-form>
  </v-app>
</template>

<script>
export default {
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

  methods: {
    validate () {
      if (this.$refs.form.validate()) {
        this.$emit('addprofile', { name: this.name, position: this.position })
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
