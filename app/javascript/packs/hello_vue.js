import { createApp, h } from 'vue'
import App from '../App.vue'
import router from '../plugins/vue-router'
document.addEventListener('DOMContentLoaded', () => {
  const app = createApp({
    render: () => h(App),
    App,
    router,
  })

  //   app.use(ThePluginIWantToUse)
  app.use(router)
  app.mount('#vue-app')
})
