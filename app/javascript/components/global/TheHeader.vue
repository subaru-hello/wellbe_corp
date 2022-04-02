<template>
  <div class="navbar sticky bg-base-100">
    <div class="flex-1">
      <router-link
        to="/"
        class="transition ease-in duration-400 btn btn-ghost normal-case text-xl"
        aria-current="page"
        >WellBee</router-link
      >
    </div>
    <div class="flex-none">
      <ul class="menu menu-horizontal p-0">
        <li>
          <router-link
            to="/members"
            class="transition ease-in duration-400"
            aria-current="page"
            >Members</router-link
          >
        </li>
        <li tabindex="0">
          <router-link to="competitions" class="transition ease-in duration-700"
            >Schedule</router-link
          >
          <ul class="p-2 bg-base-100">
            <li><a>National</a></li>
            <li><a>Kanagawa</a></li>
            <li><a>Kawasaki</a></li>
          </ul>
        </li>
        <li>
          <router-link to="records" class="transition ease-in duration-700"
            >Records</router-link
          >
        </li>
        <li>
          <router-link to="/sponsors" class="transition ease-in duration-700"
            >Sponsor</router-link
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
