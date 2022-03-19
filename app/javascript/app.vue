<template>
  <div id="vue-app">
    <TheHeader />
    <div class="mt-12">
      <router-view />
    </div>
    <!-- <TheFooter /> -->
  </div>
</template>

<script>
import TheHeader from './components/global/TheHeader.vue'
import { ref } from 'vue'

export default {
  components: {
    TheHeader,
  },
  setup() {
    const message = ref('Wellbeへようこそ')
    return {
      message,
      TheHeader,
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
