<template>
  <p>記録室です</p>
  <div v-for="(record, index) in records" :key="index">
    <p>{{ record.nickname }}</p>
    <p>{{ record.email }}</p>
  </div>
</template>
<script>
import { onMounted, ref } from 'vue'
const axios = require('axios').default
export default {
  setup() {
    const records = ref([])
    onMounted(() => {
      axios
        .get('api/v1/records')
        .then((response) => (records.value = response.data))
        .catch((error) => console.log(error))
    })
    return {
      records,
    }
  },
}
</script>
