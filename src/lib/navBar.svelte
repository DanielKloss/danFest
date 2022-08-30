<div class="header">
	<a class="title" href="/">DANFEST</a>
	<div class="tabs">
		<a class="tab" href="/stats">STATS</a>
		<a class="tab" href="/history">HISTORY</a>
	</div>
</div>

<style>
  	.tabs {
		display: flex;
		align-self: flex-end;
		gap: 1rem;
	}

	.tab {
		background-color: white;
		margin-bottom: 0px;
		padding: 0.25rem 0.5rem;
		border-top-right-radius: 0.5rem;
		border-top-left-radius: 0.5rem;
		cursor: pointer;
	}

	.selected {
		background-color: white;
	}

	.header {
		display: flex;
		align-items: center;
		gap: 1rem;
		justify-content: space-between;
		list-style-type: none;
		background-color: #DE0000;
		padding: 1rem 0.5rem 0rem 1rem;
		margin: 0 0 2rem 0;
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