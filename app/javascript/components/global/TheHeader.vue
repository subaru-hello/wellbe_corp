<template>
  <div class="navbar sticky bg-base-100">
    <div class="flex-1">
      <a class="btn btn-ghost normal-case text-xl">WelBee</a>
    </div>
    <div class="flex-none">
      <ul class="menu menu-horizontal p-0">
        <li>
          <router-link
            to="/members"
            class="transition ease-in duration-400"
            aria-current="page"
            >部員</router-link
          >
        </li>
        <li tabindex="0">
          <router-link to="competitions" class="transition ease-in duration-700"
            >競技日程</router-link
          >
          <ul class="p-2 bg-base-100">
            <li><a>全国</a></li>
            <li><a>神奈川</a></li>
          </ul>
        </li>
        <li>
          <router-link to="records" class="transition ease-in duration-700"
            >記録室</router-link
          >
        </li>
        <li>
          <router-link to="/sponsors" class="transition ease-in duration-700"
            >スポンサー</router-link
          >
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style></style>
