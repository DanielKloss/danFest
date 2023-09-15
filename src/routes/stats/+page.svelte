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

    attendees = attendees.sort(function (a, b) {
        let attendeeA = a.festivals.length;
        let attendeeB = b.festivals.length;
        return attendeeA > attendeeB ? -1 : attendeeA > attendeeB ? 1 : 0;
    });

    locations = data.locations.sort(function (a, b) {
        let locationA = a.festivals.length;
        let locationB = b.festivals.length;
        return locationA > locationB ? -1 : locationA > locationB ? 1 : 0;
    });

    subLocations = data.subLocations.sort(function (a, b) {
        let locationA = a.festivals.length;
        let locationB = b.festivals.length;
        return locationA > locationB ? -1 : locationA > locationB ? 1 : 0;
    });

</script>
<div class="tableContainer">
    <div class="card">
        <h2>Hall of Fame</h2>
        <div class="table">
            <div class="row header">
                <p>Name</p>
                <p style="text-align: center;">Attended</p>
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

    <div class="card">
        <h2>Venues</h2>
        <div class="table">
            <div class="row header">
                <p>Name</p>
                <p style="text-align: center;">Hosted</p>
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
        <h2>Activity Types</h2>
        <div class="table">
            <div class="row header">
                <p>Name</p>
                <p style="text-align: center;">Completed</p>
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

<style>
    .tableContainer {
        display: flex;
        flex-wrap: wrap;
        align-items: flex-start;
    }

    .table {
        display: flex;
        flex-direction: column;
    }

    .header {
        font-weight: bold;
        margin-bottom: 0.5rem;
    }

    .row {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        align-items: center;
        padding: 0.5rem;
        border-radius: 7px;
    }

    div.table > div:nth-of-type(even){background-color:lightgray;}  
</style>