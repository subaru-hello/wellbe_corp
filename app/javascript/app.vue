<template>
  <div id="vue-app">
    <!-- <TheHeader /> -->
    <div class="mt-12">
      <router-view />
    </div>
    <!-- <TheFooter /> -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      message: 'WellBeへようこそ',
    }
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
