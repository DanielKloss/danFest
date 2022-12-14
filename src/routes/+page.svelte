<script lang="ts">
    import Icon from 'svelte-icons-pack/Icon.svelte';
    import ImLocation from "svelte-icons-pack/im/ImLocation";
    import ImClock from "svelte-icons-pack/im/ImClock";
	import type { PageData } from './$types';

    export let data : PageData;

    let ticketReference: string = "";

    $: ticketReferenceEntered = data.tickets.filter(t => t.reference == ticketReference).length > 0;
    $: invitees = data.tickets.filter(t => t.reference == ticketReference).flatMap(r => r.attendees);
    $: attendingStatus = data.tickets.filter(t => t.reference == ticketReference).flatMap(r => r.attending);

    async function changeAttendingStatus(status: string){
        data.tickets.filter(t => t.reference == ticketReference)[0].attending = status;
        data.tickets = data.tickets;

        const attendingStatusPostResult = await fetch('/api/attending', {
            method: 'POST',
            body: JSON.stringify(data.tickets.filter(t => t.reference == ticketReference)[0]),
            headers: {
                'content-type': 'application/json'
            }
        });
    }
</script>

<div class="card">
    <h1 class="title">DanFest 2022</h1>
    {#each data.tickets as ticket}
        <div class="ticketStatus">
            <p>{ticket.attendees}</p>
            <p class:attendingStatus={ticket.attending == "Attending"}
            class:notAttendingStatus={ticket.attending == "Not Attending"}
            class:pendingStatus={ticket.attending == "Pending"}>
                {ticket.attending}
            </p>
        </div>
    {/each}
</div>

<div class="card">
    <h2>Find Out More</h2>
    <p>Enter your ticket reference number:</p>
    <input placeholder="" bind:value={ticketReference}/>
</div>
        
{#if ticketReferenceEntered}
    <div class="card">
        <h1 class="title">{invitees}</h1>
        <p>Congratulations for getting a ticket for DanFest in this year's ballot. Details of your ticket are below:</p>

        <h1>16th December 2022</h1>

        <div class="ticket">
            <div class="ticketContent">
                    <h1>Crazier Golf</h1>
                    <div class="row">
                        <Icon src={ImLocation} />
                        <p>Boom Battle Bar, Ealing</p>
                    </div>
                    <div class="row">
                        <Icon src={ImClock} />
                        <p>7:30pm - 8:15pm</p>
                    </div>
            </div>
        </div>

        <div class="ticket">
            <div class="ticketContent">
                <h1>Food and Drink</h1>
                <div class="row">
                    <Icon src={ImLocation}/>
                    <p>BrewDog, Ealing</p>
                </div>
                <div class="row">
                    <Icon src={ImClock} />
                    <p>8:30pm - 11:30pm</p>
                </div>
            </div>
        </div>

        <p>Please RSVP using the buttons below</p>
        <div class="rsvpButtons">
            <button type="button" class="rsvpButton notAttending" class:selected={attendingStatus == "Not Attending"} on:click={() => changeAttendingStatus("Not Attending")}>Not Attending</button>
            <button type="button" class="rsvpButton pending" class:selected={attendingStatus == "Pending"} on:click={() => changeAttendingStatus("Pending")}>Pending</button>
            <button type="button" class="rsvpButton attending" class:selected={attendingStatus == "Attending"} on:click={() => changeAttendingStatus("Attending")}>Attending</button>
        </div>
    </div>
{/if}

<style>
    .ticketStatus {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .rsvpButtons {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        justify-content: center;
    }

    .rsvpButton {
        opacity: 0.4;
        font-family: "jost";
        background: grey;
        padding: 1rem 0 1rem 0;
        border: none;
        text-transform: uppercase;
        height: 70px;
    } 
    
    .notAttending {
        background-color: #f4b183;
        border-radius: 25px 0 0 25px;
    }

    .attending {
        background-color: #a8d08d;
        border-radius: 0 25px 25px 0;
    }

    .selected {
        opacity: 1;
        border: black 0.2rem solid;
        font-weight: bold;
    }

    .attendingStatus {
        background-color: #a8d08d;
        padding: 0.5rem;
        border-radius: 7px;
    }

    .pendingStatus {
        background-color: grey;
        color: white;
        padding: 0.5rem;
        border-radius: 7px;
    }

    .notAttendingStatus {
        background-color: #f4b183;
        padding: 0.5rem;
        border-radius: 7px;
    }

    .ticket:after {
        content: "";
        position: absolute !important;
        z-index: 100;
        top: 0;
        left: 0;
        border-right: #fff 15px solid;
        border-bottom: #fff 15px solid;
        -moz-border-radius: 0 0 20px 0;
        -webkit-border-radius: 0 0 20px 0;
        border-radius: 0 0 20px 0;
    }
    
    .ticket:before {
        content: "";
        position: absolute !important;
        z-index: 100;
        top: 0;
        right: 0;
        border-left: #fff 15px solid;
        border-bottom: #fff 15px solid;
        -moz-border-radius: 0 0 0 20px;
        -webkit-border-radius: 0 0 0 20px;
        border-radius: 0 0 0 20px;
    }

    .ticket .ticketContent:after {
        content: "";
        position: absolute !important;
        z-index: 100;
        bottom: 0;
        left: 0;
        border-right: #fff 15px solid;
        border-top: #fff 15px solid;
        -moz-border-radius: 0 20px 0 0;
        -webkit-border-radius: 0 20px 0 0;
        border-radius: 0 20px 0 0;
    }
    
    .ticket .ticketContent:before {
        content: "";
        position: absolute !important;
        z-index: 1000;
        bottom: 0;
        right: 0;
        border-left: #fff 15px solid;
        border-top: #fff 15px solid;
        -moz-border-radius: 20px 0 0 0;
        -webkit-border-radius: 20px 0 0 0;
        border-radius: 20px 0 0 0;
    }

    .ticket {
        position: relative !important;
        padding: 17px 27px;
        margin: 0 5px 5px 0;
        background-color: #de0000;
        color:white;
    }

    .ticketContent{
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }
    
    .title {
        font-size: 2rem;
    }

    .row {
        display: flex;
        gap: 0.3rem;
    }

    input {
        border-radius: 10px;
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        border: none;
        font-size: 1.5rem;
        padding: 0.5rem;

        -webkit-appearance: none;
        -webkit-box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    }
</style>