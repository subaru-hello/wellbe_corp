<template>
  <div class="container mx-auto mt-28 px-5 flex">
    <p>{{ message }}</p>
    <router-link to="/competitions">出走競技会予定</router-link>
    <router-link to="/records">記録集</router-link>
    <router-link to="/sponsors">スポンサー</router-link>
    <router-link to="/members">部員紹介</router-link>
  </div>
  <router-view />
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
