const Profile = {
    props: {
        'items': {
            type: Array,
            required: false
        }
      },
    template : `<div>
                    <v-row>
                        <v-fab-transition>
                            <v-btn color="accent" fab large dark bottom right fixed absolute class="v-btn--settings mb-15" @click="dialog = !dialog">
                                <v-icon>mdi-plus</v-icon>
                            </v-btn>
                        </v-fab-transition>
                        <v-dialog v-model="dialog" max-width="290">
                            <v-card>
                                <v-card-title v-if="!isEdit" class="headline"> Add User </v-card-title>
                                <v-card-title v-if="isEdit" class="headline"> Edit User </v-card-title>
                                <v-card-text>
                                    <v-form v-model="addValid">
                                        <v-text-field v-model="name" :rules="rules" label="User Name" hide-details="auto"> </v-text-field>
                                        <v-text-field v-model="position" :rules="rules" label="User Position" hide-details="auto"> </v-text-field>
                                    </v-form>
                                </v-card-text>
                                <v-card-actions>
                                    <v-spacer></v-spacer>
                                    <v-btn color="error darken-1" text @click="dialog = false"> Cancel </v-btn>
                                    <v-btn v-if="!isEdit" color="green darken-1" text @click="addUser()" :disabled="!addValid"> Add </v-btn>
                                    <v-btn v-if="isEdit" color="green darken-1" text @click="editprofile()" :disabled="!addValid"> Save </v-btn>
                                </v-card-actions>
                            </v-card>
                        </v-dialog>
                    </v-row>
                    <v-row>
                        <v-col v-for="(item, index) in items" :key="item.id" md="4" sm="12">
                            <v-card elevation="2" class="mx-auto" tile>
                                <v-img v-if="item.avatar" :src="item.avatar" class="white--text align-end" aspect-ratio="2.0" contain/>
                                <v-list-item color="rgba(0, 0, 0, .4)">
                                    <v-list-item-content>
                                        <v-list-item-title class="title">{{ item.name }}</v-list-item-title>
                                        <v-list-item-subtitle>{{ item.position }}</v-list-item-subtitle>
                                    </v-list-item-content>
                                    <v-list-item-icon>
                                        <v-btn color="primary" @click="changeprofile(item)" fab small dark>
                                            <v-icon>mdi-account-edit </v-icon>
                                        </v-btn>
                                        <v-btn color="error" @click="$emit('deleteprofile', item.id)" fab small dark>
                                            <v-icon>mdi-delete</v-icon>
                                        </v-btn>
                                    </v-list-item-icon>
                                </v-list-item>
                            </v-card>
                        </v-col>
                    </v-row>
                </div>`,
    data: function() {
       return {
          position : '',
          name: '',
          image_src: 'https://cdn.vuetifyjs.com/images/cards/server-room.jpg',
          dialog: false,
          rules: [
            value => !!value || 'Required.',
            value => (value && value.length >= 3) || 'Min 3 characters',
          ],
          addValid: true,
          isEdit: false,
          editId : null
       }
    },
    methods:{
        addUser () {
            this.$emit('addprofile', {name: this.name,  position: this.position})
            this.dialog = false
            this.name = ''
            this.position = ''
        },
        changeprofile (item) {
            this.name = item.name
            this.position = item.position
            this.editId = item.id
            this.dialog = true
            this.isEdit = true
        },
        editprofile (){
            console.log({name: this.name,  position: this.position})
            this.$emit('editprofile', {name: this.name,  position: this.position}, this.editId )
            this.name = ''
            this.position = ''
            this.editId = null
            this.dialog = false
            this.isEdit = false
        }
    }
 }