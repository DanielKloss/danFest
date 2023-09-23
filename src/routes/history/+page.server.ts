import PrismaClient from '../../prisma';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
	const prisma = new PrismaClient();

    let allFests = await prisma.festival.findMany({
			select: {
				title: true,
				year: true,
				activities: true,
				location: {
					select: {
						name: true
					}
				},
				subLocations: {
					select: {
						subLocation: {
							select: {
								name: true
							}
						}
					}
				},
				attendees: {
					select: {
						attendee: {
							select: {
								first_name: true,
								last_name: true
							}
						}
					},
					orderBy: [
						{
							attendee: {
								first_name: 'asc'
							}
						},
						{
							attendee: {
								last_name: 'asc'
							}
						}
					]
				}
			},
			orderBy: {
				year: 'desc'
			}
		});

    await prisma.$disconnect();
	
    return { allFests };
}
