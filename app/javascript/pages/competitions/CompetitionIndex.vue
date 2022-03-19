<template>
  <p>直近の競技会情報です</p>

  <div v-for="(competition, index) in competitions" :key="index">
    <p>{{ competition.name }}</p>
    <p>{{ competition.held_date }}</p>
  </div>
</template>
<script>
import { onMounted, ref } from 'vue'
const axios = require('axios').default
export default {
  setup() {
    const competitions = ref([])
    onMounted(() => {
      axios
        .get('api/v1/competitions')
        .then((response) => (competitions.value = response.data))
        .catch((error) => console.log(error))
    })
    return {
      competitions,
    }
  },
}
</script>
