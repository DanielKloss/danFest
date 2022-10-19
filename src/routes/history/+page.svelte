<script>
    import FestivalInfo from '$lib/festivalInfo.svelte';

    /** @type {import('./$types').PageData} */
    export let data;
    let festivals = data.allFests;
</script>

<div class="festivalContainer">
    {#each festivals as festival}
        <FestivalInfo currentFestival={festival}/>
    {/each}
</div>

<style>
    .festivalContainer {
        display: flex;
        flex-wrap: wrap;
    }
</style>