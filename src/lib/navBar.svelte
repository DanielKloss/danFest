<script>
	import { page } from '$app/stores';  
</script>

<div class="tabs">
	<a class="tab" href="/" class:selected={$page.url.pathname == "/"}>
		<img class="icon" src="/icons/party.png" alt="2023" class:selected={$page.url.pathname == "/"}/>
		2023
	</a>
	<a class="tab" href="/stats" class:selected={$page.url.pathname == "/stats"}>
		<img class="icon" src="/icons/stats.png" alt="stats" class:selected={$page.url.pathname == "/stats"}/>
		STATS
	</a>
	<a class="tab" href="/history" class:selected={$page.url.pathname == "/history"}>
		<img class="icon" src="/icons/history.png" alt="history" class:selected={$page.url.pathname == "/history"}/>
		FESTS
	</a>
</div>

<style>
  	.tabs {
		display: flex;
		justify-content: center;
		gap: 1.5rem;
		margin-bottom: 0.75rem;
	}

	.tab {
		display: flex;
		flex-direction: column;
		gap: 1rem;
		cursor: pointer;
		font-size: 1.25rem;
		color: #a0a0a0;
		letter-spacing: 0.1rem;
		padding-bottom: 0.1rem;
		padding: 0.5rem;
	}

	.selected {
		color: black;
		font-weight: bold;
		filter: none !important;
		background-color: #D4D4D4;
		border-radius: 7px;
	}

	.icon {
		width: 2rem;
		align-self: center;
		filter: invert(67%) sepia(4%) saturate(14%) hue-rotate(347deg) brightness(97%) contrast(79%);
	}
</style>