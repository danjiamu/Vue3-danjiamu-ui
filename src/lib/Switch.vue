<template>
  <button class="djm-switch" @click="toggle" :class="{ 'djm-checked': value }">
    <span></span>
  </button>
</template>

<script lang="ts">
import { ref } from "vue";

export default {
  props: {
    value: Boolean,
  },
  setup(props, context) {
    const toggle = () => {
      context.emit("update:value", !props.value);
    };
    return { toggle };
  },
};
</script>

<style lang="scss" scoped>
$h: 22px;
$h2: $h - 4px;
.djm-switch {
  height: $h;
  width: $h * 2;
  border: none;
  background: #bfbfbf;
  border-radius: 11px;
  position: relative;
}

span {
  position: absolute;
  top: 2px;
  left: 2px;
  height: $h2;
  width: $h2;
  background: white;
  border-radius: 11px;
  transition: all 250ms;
}
button.djm-checked {
  background: #1890ff;
}
button.djm-checked > span {
  left: calc(100% - #{$h2} - 2px);
}
button:focus {
  outline: none;
}
button:active {
  > span {
    width: $h2 + 4px;
  }
}
button.djm-checked:active {
  > span {
    width: $h2 + 4px;
    margin-left: -4px;
  }
}
</style>
