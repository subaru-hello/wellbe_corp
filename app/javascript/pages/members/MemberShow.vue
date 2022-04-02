<template>
  <a class="relative block bg-black group" href="">
    <img
      class="absolute inset-0 object-cover w-full h-full transition-opacity opacity-75 group-hover:opacity-50"
      src="https://www.hyperui.dev/photos/man-6.jpeg"
      alt=""
    />
    <div class="relative p-8">
      <p class="text-sm font-medium tracking-widest text-pink-500 uppercase">
        Developer
      </p>

      <p class="text-2xl font-bold text-white">Barry Scott</p>
      {{ userId }}
      <div class="mt-64">
        <div
          class="transition-all transform translate-y-8 opacity-0 group-hover:opacity-100 group-hover:translate-y-0"
        >
          <p class="text-sm text-white">
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis
            perferendis hic asperiores quibusdam quidem voluptates doloremque
            reiciendis nostrum harum. Repudiandae?
          </p>
        </div>
      </div>
    </div>
  </a>
</template>

<script>
import { useRoute } from 'vue-router'
export default {
  setup(props) {
    const route = useRoute()
    const userId = ref('')
    id.value = route.params.id
    console.log(userId)

    watch(
      () => route.params.id,
      () => {
        id.value = route.params.id
      }
    )

    return { userId }
  },
}
</script>
