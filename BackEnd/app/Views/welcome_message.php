
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welcome to CodeIgniter 4!</title>
	<meta name="description" content="The small framework with powerful features">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/favicon.ico"/>
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet">
	<?php echo link_tag('src/bundle.css?v='.$version); ?>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui">
</head>
<body>
<div id="app">
<v-app>
  <v-navigation-drawer app>
    <!-- -->
  </v-navigation-drawer>

  <v-app-bar app>
    <!-- -->
  </v-app-bar>

  <!-- Sizes your content based upon application components -->
  <v-main>

    <!-- Provides the application the proper gutter -->
    <v-container fluid>
	<template>
  <v-container>
    <v-row
      align="center"
      justify="center"
    >
      <v-badge
        bordered
        color="error"
        icon="mdi-lock"
        overlap
      >
        <v-btn
          class="white--text"
          color="error"
          depressed
        >
          Lock Account
        </v-btn>
      </v-badge>

      <div class="mx-3"></div>

      <v-badge
        bordered
        bottom
        color="deep-purple accent-4"
        dot
        offset-x="10"
        offset-y="10"
      >
        <v-avatar size="40">
          <v-img src="https://cdn.vuetifyjs.com/images/lists/2.jpg"></v-img>
        </v-avatar>
      </v-badge>

      <div class="mx-3"></div>

      <v-badge
        avatar
        bordered
        overlap
      >
        <template v-slot:badge>
          <v-avatar>
            <v-img src="https://cdn.vuetifyjs.com/images/logos/v.png"></v-img>
          </v-avatar>
        </template>

        <v-avatar size="40">
          <v-img src="https://cdn.vuetifyjs.com/images/john.png"></v-img>
        </v-avatar>
      </v-badge>
    </v-row>
  </v-container>
</template>
    </v-container>
  </v-main>

  <v-footer app>
    <!-- -->
  </v-footer>
</v-app>
</div>
</body>
<?php echo script_tag('src/bundle.js?v='.$version); ?>
<script>
new Vue({
vuetify,
}).$mount('#app')
</script>
</html>
