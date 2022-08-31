<script>
  import { Circle } from 'svelte-loading-spinners'
  import { navigating } from '$app/stores'
  import "../app.css";
  import NavBar from "$lib/navBar.svelte"; 
</script>

<NavBar/>

<main>
  {#if $navigating}
    <div style="display: flex; justify-content:center">
      <Circle color="#DE0000"/>
    </div>
  {:else}
    <slot />
  {/if}
</main>

<style>
  main {
    margin-left: 1rem;
  }
</style>