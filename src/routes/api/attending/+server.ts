import { PrismaClient } from '@prisma/client';

/** @type {import('./$types').RequestHandler} */
export async function POST({ request }) {
    let requestData = await request.json();

	const prisma = new PrismaClient();

    const session = await prisma.ticket2022.update({
        where: {
            id: requestData.id
        },
		data: {
			attending: requestData.attending
		}
    });
    
	return new Response(String("success"));
}
