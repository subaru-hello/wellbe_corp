<template>
  <p>メンバー情報です</p>
  <div v-for="(user, index) in users" :key="index" :ref="user">
    <p>{{ user.nickname }}</p>
    <p>{{ user.email }}</p>
  </div>
  <p>count is {{ count }}</p>
  <p>plusOne is {{ plusOne }}</p>
  <button @click="increment">count++</button>
</template>
<script>
import { onMounted, ref, computed, watch } from 'vue'
const axios = require('axios').default
export default {
  setup() {
    // reactive state
    const users = ref('')
    const users2 = ref('')
    const count = ref(0)
    // computed state
    const plusOne = computed(() => count.value + 1)
    // method
    const increment = () => {
      count.value++
    }
    // watch
    watch(
      () => count.value * 2,
      (val) => {
        console.log(`count * 2 is ${val}`)
      }
    )
    onMounted(() => {
      axios
        .get('api/v1/crues')
        .then((response) => (users.value = response.data))
        .catch((error) => console.log(error))

      axios
        .get('https://jsonplaceholder.typicode.com/users')
        .then((response) => (users2.value = response.data))
        .catch((error) => console.log(error))
    })
    return {
      users,
      users2,
      count,
      plusOne,
      increment,
    }
  },
}
</script>
