<script>
    /** @type {import('./$types').PageData} */
    export let data;
    let numberOfFestivals = data.numberOfFestivals;

    let hallOfFame = data.hallOfFame.sort(function (a, b) {
        let attendeeA = a.attendance;
        let attendeeB = b.attendance;
        return attendeeA > attendeeB ? -1 : attendeeA > attendeeB ? 1 : 0;
    });

    let locations = data.locations.sort(function (a, b) {
        let locationA = a.hosted;
        let locationB = b.hosted;
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
            {#each hallOfFame as attendee}
                <div class="row">
                    <p>{attendee.firstName} {attendee.lastName}</p>
                    <p style="text-align: center;">{attendee.attendance}</p>
                    <p style="text-align: right;">{Math.round(attendee.attendance / numberOfFestivals*100)}%</p>
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
                    <p style="text-align: center;">{location.hosted}</p>
                    <p style="text-align: right;">{Math.round(location.hosted / numberOfFestivals*100)}%</p>
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