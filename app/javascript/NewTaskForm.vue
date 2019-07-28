<script>
export default {
  data: function () {
    return {
      showForm: false,
      title: "",
    }
  },
  methods: {
    toggleForm: function () {
      this.showForm = !this.showForm;
    }
  }
}
</script>
