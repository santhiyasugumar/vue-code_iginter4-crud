<template>
  <div>
    <h5 class="mb-3">
      List your Favourite Food
    </h5>
    <v-text-field
      v-model="txtFood"
      name="txtFood"
      label="Enter Food"
      outlined
      clearable
      @keyup.enter="addFood"
    />
    <ol>
      <li v-for="todo in foodlist" :key="todo.id">
        <label :id="todo.id" :checked="todo.done" @change="toggle(todo)" />
        <label :class="{ done: todo.done }" :for="todo.id">{{ todo.text }}</label>
        <button @click="removeFood(todo)">
          <v-icon>
            mdi-window-close
          </v-icon>
        </button>
      </li>
    </ol>
  </div>
</template>

<script>
import { mapMutations } from 'vuex'

export default {
  layout: 'dashboard',
  computed: {
    foodlist () {
      return this.$store.state.foodlist.list
    }
  },
  methods: {
    addFood (event) {
      this.$store.commit('foodlist/add', event.target.value)
      event.target.value = ''
    },
    ...mapMutations({
      toggle: 'foodlist/toggle'
    }),
    removeFood (todo) {
      this.$store.commit('foodlist/remove', todo)
      this.txtFood = ''
    }
  }
}
</script>
<style scoped>
div {
  display: flex;
  flex-direction: column;
}

.done {
  text-decoration: line-through;
}

i.v-icon.v-icon {
  color: red;
}
</style>
