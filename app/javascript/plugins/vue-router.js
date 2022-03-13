// import Vue from 'vue';
import { createWebHistory, createRouter } from 'vue-router'
// import * as VueRouter from 'vue-router';
import Top from '../pages/top/WellbeIndex'
import Competition from '../pages/competitions/CompetitionIndex.vue'
import Member from '../pages/members/MemberIndex.vue'
import Record from '../pages/records/RecordIndex.vue'
import Sponsor from '../pages/sponsors/SponsorIndex.vue'

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
