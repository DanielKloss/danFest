import PrismaClient from '../../prisma';
import { HallOfFamer } from './hallOfFamer';
import { LocationCounter } from './locationCounter';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
    const prisma = new PrismaClient();
    
    let festivalAttendees = await prisma.festival.findMany({
        select: {
            location: true,
            attendees: {
                select: {
                    attendee: {
                        select: {
                            id: true,
                            first_name: true,
                            last_name: true
                        }
                    }
                }
            }
        }
    });

    let hallOfFame = [];
    let locations = [];

    for (const festival of festivalAttendees) {
        let locationCandidate = festival.location;
        let locationCounter = new LocationCounter(locationCandidate.id, locationCandidate.name, 1);

        let found = locations.find((l) => l.id == locationCandidate.id);

        if (found == undefined) {
            locations.push(locationCounter);
        } else {
            found.hosted++;
        }
        
        for (const attendee of festival.attendees) {
            let hallOfFameCandidate = attendee.attendee;
            let hallOfFamer = new HallOfFamer(
                hallOfFameCandidate.id,
                hallOfFameCandidate.first_name,
                hallOfFameCandidate.last_name,
                1
            );
            
            let found = hallOfFame.find(a => a.id == hallOfFameCandidate.id);

            if (found == undefined) {
                hallOfFame.push(hallOfFamer);    
            } else {
                found.attendance++;
            }
        }
    }

    let numberOfFestivals = await prisma.festival.count();

	await prisma.$disconnect();

    return { numberOfFestivals, hallOfFame, locations };
}