<template>
  <div id="vue-app">
    <TheHeader />
    <div class="mt-12 font-mono">
      <router-view />
    </div>
    <TheFooter />
  </div>
</template>

<script>
import TheHeader from './components/global/TheHeader.vue'
import TheFooter from './components/global/TheFooter.vue'
import { ref } from 'vue'

export default {
  components: {
    TheHeader,
    TheFooter,
  },
  setup() {
    const message = ref('Wellbeへようこそ')
    return {
      message,
      TheHeader,
      TheFooter,
    }
  },
}
</script>

<style scoped>
p {
  /* font-size: 2em;
  text-align: center; */
}
</style>
