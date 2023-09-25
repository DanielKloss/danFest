<script lang="ts">
  import { onNavigate } from '$app/navigation';
  import { fade } from 'svelte/transition';
  import { Circle } from 'svelte-loading-spinners'
  import { navigating } from '$app/stores'
  import "../app.css";
  import NavBar from "$lib/navBar.svelte"; 

  onNavigate (() => {
    if (!document.startViewTransition) return;

    return new Promise((fulfil) => {
      document.startViewTransition(() => new Promise(fulfil));
    })
  });
</script>

<div class="header">
	<a class="title" href="/">DANFEST</a>
</div>

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

  .header {
		list-style-type: none;
		background-color: #DE0000;
		padding: 0.5rem 0.5rem 0rem 1rem;
		margin-bottom: 1.5rem;
	}

	.title {
		align-self: stretch;
		font-size: 4rem;
		font-family: "carbon-block";
		background-color: #DE0000;
		border:none;
		cursor: pointer;
	}
</style>