<template>
  <div class="home">
    <Gochi></Gochi>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
import Gochi from "@/components/gochi.vue"; // @ is an alias to /src

@Component({
  components: {
    Gochi
  }
})
export default class Home extends Vue {}
</script>
