<template>
  <div class="md:container md:mx-auto">
    <p class="text-center text-3xl">About Members</p>

    <div
      class="max-w-sm bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700 mx-auto"
      v-for="(user, index) in users"
      :key="index"
    >
      <div class="flex flex-col items-center pb-10 mt-4">
        <img
          src="https://api.lorem.space/image/face?hash=64318"
          class="w-24 rounded-full avatar"
        />
        <h5 class="mb-1 text-xl font-medium text-gray-900 dark:text-white">
          {{ user.nickname }}
        </h5>
        <span class="text-sm text-gray-500 dark:text-gray-400"
          >Backend Engeneer</span
        >
        <span class="flex mx-5">
          <p class="mx-2">
            <svg
              class="h-8 w-8 text-blue-500"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <path
                d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"
              />
            </svg>
          </p>
          <p class="mx-2">
            <svg
              class="h-8 w-8 text-red-500"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <rect x="2" y="2" width="20" height="20" rx="5" ry="5" />
              <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z" />
              <line x1="17.5" y1="6.5" x2="17.51" y2="6.5" />
            </svg>
          </p>
          <p class="mx-2">
            <svg
              class="h-8 w-8 text-blue-500"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
              <path
                d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"
              />
            </svg>
          </p>
        </span>
        <div class="flex mt-4 space-x-3 lg:mt-6">
          <span
            class="inline-flex items-center py-2 px-4 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
          >
            <router-link
              :to="{
                component: 'MemberShow',
                params: { userId: `${user.id}` },
              }"
              >詳細</router-link
            ></span
          >
          <a
            href="#"
            class="inline-flex items-center py-2 px-4 text-sm font-medium text-center text-gray-900 bg-white rounded-lg border border-gray-300 hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:bg-gray-800 dark:text-white dark:border-gray-600 dark:hover:bg-gray-700 dark:hover:border-gray-700 dark:focus:ring-gray-700"
            >こんにちは</a
          >
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { onMounted, ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'
const axios = require('axios').default
export default {
  setup() {
    // reactive state
    const users = ref([])
    const router = useRouter()
    // const showUserInfo = (()=> {
    //   router.push(`/members/${id}`)
    // })
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
