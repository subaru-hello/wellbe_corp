<template>
  <p class="text-center text-3xl">Records</p>
  <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
      <thead
        class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
      >
        <tr>
          <th scope="col" class="px-6 py-3">Product name</th>
          <th scope="col" class="px-6 py-3">Color</th>
          <th scope="col" class="px-6 py-3">Category</th>
          <th scope="col" class="px-6 py-3">Price</th>
          <th scope="col" class="px-6 py-3">Price</th>
        </tr>
      </thead>
      <tbody>
        <tr
          class="bg-white border-b dark:bg-gray-800 dark:border-gray-700"
          v-for="(record, index) in records"
          :key="index"
        >
          <th
            scope="row"
            class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap"
          >
            {{ record.group }}
          </th>
          <td class="px-6 py-4">{{ record.race_result }}</td>
          <td class="px-6 py-4">{{ record.rane }}</td>
          <td class="px-6 py-4">{{ record.wind }}</td>
          <td class="px-6 py-4">{{ record.weather }}</td>
        </tr>
      </tbody>
    </table>
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
