import { PrismaClient } from '@prisma/client';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
	const prisma = new PrismaClient();

	let tickets = await prisma.ticket2023.findMany({
		select: {
			id: true,
			reference: true,
			attendees: true,
			attending: true
		},
		orderBy: {
			attendees: "asc"
		}
	});

	await prisma.$disconnect();
	return { tickets };
}
