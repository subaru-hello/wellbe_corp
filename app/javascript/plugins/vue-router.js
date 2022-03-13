// import Vue from 'vue';
import { createWebHistory, createRouter } from 'vue-router'
// import * as VueRouter from 'vue-router';
import Top from '../pages/top/Index'
import Competition from '../pages/competitions/Index.vue'
import Member from '../pages/members/Index.vue'
import Record from '../pages/records/Index.vue'
import Sponsor from '../pages/sponsors/Index.vue'

const routes = [
  {
    path: '/',
    component: Top,
  },
  {
    path: '/competitions',
    component: Competition,
  },
  {
    path: '/members',
    component: Member,
  },
  {
    path: '/records',
    component: Record,
  },
  {
    path: '/sponsors',
    component: Sponsor,
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
