<script>
	import { page } from '$app/stores';  
</script>

<div class="tabs">
	<a class="tab" href="/" class:selected={$page.url.pathname == "/"}>2023</a>
	<a class="tab" href="/stats" class:selected={$page.url.pathname == "/stats"}>STATS</a>
	<a class="tab" href="/history" class:selected={$page.url.pathname == "/history"}>HISTORY</a>
</div>

<style>
  	.tabs {
		display: flex;
		justify-content: center;
		gap: 1rem;
		margin-bottom: 0.75rem;
	}

	.tab {
		cursor: pointer;
		font-size: 1.25rem;
		color: #a0a0a0;
		letter-spacing: 0.1rem;
		padding-bottom: 0.1rem;
	}

	.selected {
		color: black;
		border-bottom: 1px black solid;
		font-weight: bold;
	}
</style>