<script lang="ts">
	import type { PageData } from "./$types";
	import type { attendeeWithFests } from "$lib/types/attendee";
	import type { locationWithFests } from "$lib/types/location";
	import type { subLocationWithFests } from "$lib/types/subLocation";

    export let data: PageData;

    let numberOfFestivals = data.festivalCount;
    let attendees: Array<attendeeWithFests> = data.attendees;
    let locations: Array<locationWithFests> = data.locations;
    let subLocations: Array<subLocationWithFests> = data.subLocations;

</script>
<div class="tableContainer">
    <div class="group">
        <div class="card">
            <h2>HALL OF FAME</h2>
            <div class="table">
                <div class="row header">
                    <p>NAME</p>
                    <p style="text-align: center;">ATTENDED</p>
                    <p style="text-align: right;"></p>
                </div>
                {#each attendees as attendee}
                    <div class="row">
                        <p>{attendee.first_name} {attendee.last_name}</p>
                        <p style="text-align: center;">{attendee.festivals.length}</p>
                        <p style="text-align: right;">{Math.round(attendee.festivals.length / numberOfFestivals*100)}%</p>
                    </div>
                {/each}
            </div>
        </div>
    </div>

    <div class="group">
        <div class="card">
            <h2>VENUES</h2>
            <div class="table">
                <div class="row header">
                    <p>NAME</p>
                    <p style="text-align: center;">HOSTED</p>
                    <p style="text-align: right;"></p>
                </div>
                {#each locations as location}
                    <div class="row">
                        <p>{location.name}</p>
                        <p style="text-align: center;">{location.festivals.length}</p>
                        <p style="text-align: right;">{Math.round(location.festivals.length / numberOfFestivals*100)}%</p>
                    </div>
                {/each}
            </div>
        </div>

        <div class="card">
            <h2>ACTIVITY TYPES</h2>
            <div class="table">
                <div class="row header">
                    <p>NAME</p>
                    <p style="text-align: center;">FESTS</p>
                    <p style="text-align: right;"></p>
                </div>
                {#each subLocations as subLocation}
                    <div class="row">
                        <p>{subLocation.name}</p>
                        <p style="text-align: center;">{subLocation.festivals.length}</p>
                        <p style="text-align: right;">{Math.round(subLocation.festivals.length / numberOfFestivals*100)}%</p>
                    </div>
                {/each}
            </div>
        </div>
    </div>
</div>

<style>
    .tableContainer {
        display: flex;
        flex-wrap: wrap;
        align-items: flex-start;
        justify-content: center;
    }

    .table {
        display: flex;
        flex-direction: column;
    }

    .header {
        font-weight: bold;
        margin-bottom: 0.5rem;
        letter-spacing: 0.1rem;
    }

    .row {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        align-items: center;
        padding: 0.5rem;
        border-radius: 7px;
    }

    .group {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
    }

    div.table > div:nth-of-type(even){background-color:lightgray;}  

    h2 {
        letter-spacing: 0.1rem;
        padding-left: 0.5rem;
    }
</style>