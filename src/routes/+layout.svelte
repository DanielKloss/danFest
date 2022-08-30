<script>
  import "../app.css";

  import NavBar from "$lib/navBar.svelte"; 
</script>

<NavBar/>

<main>
  <slot />
</main>

<style>
  main {
    margin-left: 1rem;
  }
</style>