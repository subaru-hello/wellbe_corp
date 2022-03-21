<template>
  <p class="">メンバー情報です</p>
  <div v-for="(user, index) in users" :key="index">
    <p>{{ user.nickname }}</p>
    <p>{{ user.email }}</p>
  </div>
</template>
<script>
import { onMounted, ref } from 'vue'
const axios = require('axios').default
export default {
  setup() {
    // reactive state
    const users = ref([])
    onMounted(() => {
      axios
        .get('api/v1/crues')
        .then((response) => (users.value = response.data))
        .catch((error) => console.log(error))
    })
    return {
      users,
    }
  },
}
</script>
