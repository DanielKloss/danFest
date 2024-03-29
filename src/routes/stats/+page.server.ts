import PrismaClient from '../../prisma';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
    const prisma = new PrismaClient();

    let festivalCountResult = await prisma.festival.aggregate({
        _count: true
    });

    let attendees = await prisma.attendee.findMany({
        select: {
            id: true,
            first_name: true,
            last_name: true,
            festivals: true
        },
        orderBy: [{
            festivals: {
                _count: 'desc'
            }
            },
            {
                first_name: 'asc'
            },
            {
                last_name: 'asc'
            }
        ]
    });

    let locations = await prisma.location.findMany({
        select: {
            id: true,
            name: true,
            festivals: true
        },
        orderBy: {
            festivals: {
                _count: 'desc'
            }
        }
    });

    let subLocations = await prisma.subLocation.findMany({
        select: {
            id: true,
            name: true,
            festivals: true
        },
        orderBy: {
            festivals: {
                _count: 'desc'
            }
        }
    });

    await prisma.$disconnect();

    let festivalCount = festivalCountResult._count;

	return { festivalCount, attendees, locations, subLocations };
}