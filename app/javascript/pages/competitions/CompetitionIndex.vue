<template>
  <!-- TODO 昇順、高順に帰れるような関数をcomputedで作成する -->
  <p class="text-center text-3xl">Taikai Info</p>
  <div class="overflow-x-auto">
    <div class="inline-flex items-center justify-center space-x-3">
      <a
        href="/?page=1"
        class="inline-flex items-center justify-center w-8 h-8 border border-gray-100 rounded"
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="w-3 h-3"
          viewBox="0 0 20 20"
          fill="currentColor"
        >
          <path
            fill-rule="evenodd"
            d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
            clip-rule="evenodd"
          />
        </svg>
      </a>

      <p class="text-xs">
        3
        <span class="mx-0.25">/</span>
        12
      </p>

      <a
        href="/?page=3"
        class="inline-flex items-center justify-center w-8 h-8 border border-gray-100 rounded"
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          class="w-3 h-3"
          viewBox="0 0 20 20"
          fill="currentColor"
        >
          <path
            fill-rule="evenodd"
            d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
            clip-rule="evenodd"
          />
        </svg>
      </a>
    </div>
    <table class="min-w-full text-sm divide-y divide-x">
      <thead>
        <tr>
          <th class="sticky left-0 p-4 text-left white">
            <label class="sr-only text-white" for="row_all">Select All</label>
            <input
              class="w-5 h-5 white-200 rounded"
              type="checkbox"
              id="row_all"
            />
          </th>
          <th
            class="p-4 font-medium text-left text- white-900 whitespace-nowrap"
          >
            <div class="flex items-center">
              大会名
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-4 h-4 ml-1.5 text- white-700"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>
          </th>
          <th
            class="p-4 font-medium text-left text- white-900 whitespace-nowrap"
          >
            <div class="flex items-center">
              日付
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-4 h-4 ml-1.5 text- white-700"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>
          </th>
          <th
            class="p-4 font-medium text-left text- white-900 whitespace-nowrap"
          >
            <div class="flex items-center">
              参加可否
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-4 h-4 ml-1.5 text-white white-700"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>
          </th>
          <th
            class="p-4 font-medium text-left text- white-900 whitespace-nowrap"
          >
            <div class="flex items-center">
              場所
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-4 h-4 ml-1.5 text- white-700"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>
          </th>
          <th
            class="p-4 font-medium text-left text- white-900 whitespace-nowrap"
          >
            <div class="flex items-center">
              サイトURL
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="w-4 h-4 ml-1.5 text- white-700"
                viewBox="0 0 20 20"
                fill="currentColor"
              >
                <path
                  fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"
                />
              </svg>
            </div>
          </th>
        </tr>
      </thead>

      <tbody
        class="divide-y divide- white-100"
        v-for="(competition, index) in competitions"
        :key="index"
      >
        <tr>
          <td class="sticky left-0 p-4">
            <label class="sr-only" for="row_1">Row</label>
            <input
              class="w-5 h-5 border- white-200 rounded"
              type="checkbox"
              id="row_1"
            />
          </td>
          <td class="p-4 font-medium text- white-900 whitespace-nowrap">
            {{ competition.name }}
          </td>
          <td class="p-4 text- white-700 whitespace-nowrap">
            {{ competition.held_date }}
          </td>
          <td class="p-4 text- white-700 whitespace-nowrap">
            <strong
              class="bg-red-100 text-red-700 px-3 py-1.5 rounded text-xs font-medium"
            >
              Cancelled
            </strong>
          </td>
          <td class="p-4 text- white-700 whitespace-nowrap">
            {{ competition.held_place }}
          </td>
          <td class="p-4 text- white-700 whitespace-nowrap">
            https://www.zeroken.site
          </td>
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
