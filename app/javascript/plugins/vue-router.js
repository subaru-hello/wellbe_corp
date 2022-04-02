// import Vue from 'vue';
import { createWebHistory, createRouter } from 'vue-router'
// import * as VueRouter from 'vue-router';
import Top from '../pages/top/WellbeIndex'
import Competition from '../pages/competitions/CompetitionIndex.vue'
import Member from '../pages/members/MemberIndex.vue'
import MemberShow from '../pages/members/MemberShow.vue'
import Record from '../pages/records/RecordIndex.vue'
import Sponsor from '../pages/sponsors/SponsorIndex.vue'
import NotFound from '../pages/404.vue'

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
    path: '/members/:id',
    component: MemberShow,
  },
  {
    path: '/records',
    component: Record,
  },
  {
    path: '/sponsors',
    component: Sponsor,
  },
  {
    path: '/:pathMatch(.*)*',
    component: NotFound,
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

export default router
