<script lang="ts">
    import festival from '@prisma/client';
    import Icon from 'svelte-icons-pack/Icon.svelte';
    import ImLocation from "svelte-icons-pack/im/ImLocation";

    export let currentFestival: festival;

    console.log(currentFestival)
</script>

<div class="card">
  <h1 class="title">{currentFestival.year} - {currentFestival.title}</h1>
  <div class="row">
    <Icon src={ImLocation} />
    <p class="location">{currentFestival.location.name}</p>
  </div>
  <div class="row">
    {#each currentFestival.subLocations as subLocation}
      <span class="subLocation">{subLocation.subLocation.name}</span>
    {/each}
  </div>
  <div class="row">
    <p class="activities">{currentFestival.activities}</p>
  </div>
  <div class="attendees">
      {#each currentFestival.attendees as attendee}
          <span class="attendee">{attendee.attendee.first_name} {attendee.attendee.last_name}</span>
      {/each}
  </div>
</div>

<style>
  .row {
    display: flex;
    align-items: center;
    gap: 0.5rem;
  }

  .title {
    font-size: 2rem;
    margin: 0;
  }

  .location {
    font-size: 1.5rem;
    font-style: italic;
    margin: 0;
  }

  .subLocation {
    font-size: 0.8rem;
    margin: 0;
  }

  .subLocation:after {
    content: " /";
  }

  .subLocation:last-child:after {
    content: "";
  }

  .activities {
    font-size: 1.25rem;
    margin: 0;
  }

  .attendees {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
  }

  .attendee {
    background-color: #DE0000;
    border-radius: 7px;
    padding: 0.5rem;
    color: white;
  }
</style>