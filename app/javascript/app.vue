<template>
<div class="container mx-auto mt-28 px-5 flex">
  <p>{{message}}</p>
</div>
</template>

<script>
  export default {
    data() {
      return {
        message: "WellBeへようこそ",
      }
    }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>