<template>
  <div class="gochi">
    <div>
      <p>表示するボックス数</p>
      <p>
        <b-form-input
          class="input_numbers"
          type="number"
          min="0"
          v-model.number="numberOfBoxes"
          @change="deleteElement"
        />
      </p>
    </div>
    <div class="input_namaes" v-for="item in numberOfBoxes" :key="item">
      <b-form-input type="text" v-model="saveNames[item - 1]" />
    </div>
    <div class="m-2">
      <p>
        <b-button variant="outline-secondary" @click="gochi">GOSHI!</b-button>
      </p>
      <p class="lead p-3">
        {{ item }}
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue } from "vue-property-decorator";
@Component
export default class Gochi extends Vue {
  private numberOfBoxes = 0;
  private saveNames: string[] = [];
  private item = "";
  private gochi() {
    this.item = this.saveNames[
      Math.floor(Math.random() * this.saveNames.length - 0) + 0
    ];
  }
  deleteElement() {
    if (this.saveNames.length > this.numberOfBoxes) {
      this.saveNames.splice(this.numberOfBoxes, this.saveNames.length);
    }
  }
}
</script>

<style>
.gochi {
  width: 80%;
  margin: auto;
  padding: 20px;
}
.input_namaes {
  padding: 5px;
}
</style>
