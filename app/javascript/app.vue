<template>
  <v-app id="app">
    <v-main>
      <p>{{ message }}</p>
    </v-main>
  </v-app>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
    };
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
