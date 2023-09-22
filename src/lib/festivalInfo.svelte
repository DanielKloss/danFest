<script lang="ts">
    import festival from '@prisma/client';

    export let currentFestival: festival;
</script>

<div class="card">
  <h1 class="title">{currentFestival.year} - {currentFestival.title}</h1>
  <div class="row">
    <img class="icon" src="/icons/place.png" alt="location"/>
    <p class="location">{currentFestival.location.name}</p>
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
  .icon {
    height: 1rem;
    align-self: center;
  }

  .row {
    display: flex;
    align-items: stretch;
    gap: 0.5rem;
  }

  .row > p, span {
    display: flex;
    align-items: center;
  }

  .title {
    font-size: 2rem;
    margin: 0;
  }

  .location {
    font-size: 1.5rem;
    font-style: italic;
    margin-right: 0.5rem;
  }

  .subLocation {
    font-size: 0.8rem;
    margin-left: 0;
    background-color: #838383;
    border-radius: 10px;
    padding: 0.4rem;
    color: white;
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