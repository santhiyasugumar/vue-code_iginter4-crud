<template>
  <v-app id="inspire">
    <v-content>
      <v-container class="fill-height" fluid>
        <v-row align="center" justify="center">
          <v-col cols="12" sm="8" md="8">
            <v-card class="elevation-12">
              <v-row class="fill-height">
                <v-col cols="12" md="6" class="blue darken-1 accent-3">
                  <v-card-text class="white--text mt-12">
                    <h1 class="text-center display-1">
                      Welcome Back!
                    </h1>
                    <h5
                      class="text-center"
                    >
                      To Keep connected with us please login with your personnel info
                    </h5>
                  </v-card-text>
                  <div class="text-center">
                    <v-btn rounded outlined dark @click="step--">
                      Sign in
                    </v-btn>
                  </div>
                </v-col>

                <v-col cols="12" md="6">
                  <v-card-text class="mt-12">
                    <div class="pa-7 pa-sm-12">
                      <h1 class="text-center display-2 text--blue darken-1">
                        Sign in
                      </h1>
                      <v-form class="mt-5">
                        <v-text-field
                          prepend-icon="mdi-account"
                          name="login"
                          label="Login"
                          type="text"
                        />
                        <v-text-field
                          id="password"
                          prepend-icon="mdi-lock"
                          name="password"
                          label="Password"
                          type="password"
                        />
                        <div class="text-center mt-3">
                          <v-btn color="blue darken-1" dark to="/" @click="goToDashboard()">
                            SIGN IN
                          </v-btn>
                        </div>
                        <!-- <v-chip
                          pill
                          v-on="on"
                        >
                          <v-avatar left>
                            <v-img src="https://cdn.vuetifyjs.com/images/john.png" />
                          </v-avatar>
                          John Leider
                        </v-chip> -->
                      </v-form>
                    </div>
                  </v-card-text>
                </v-col>
              </v-row>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
export default {
  name: 'Login',
  methods: {
    goToDashboard () {
      this.$router.push('/alluser')
    }
  }
}
</script>

<style>
#inspire {
  background-color: #f5f5f5;
}
</style>
