import Vue from 'vue'
import NewTaskForm from '../NewTaskForm.vue'

document.addEventListener('DOMContentLoaded', () => {
  Vue.component('new-task-form', NewTaskForm);
  new Vue({
    el: "#js-new-task-form"
  })
})
