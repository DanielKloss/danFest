import type { Prisma } from '@prisma/client';

export type subLocationWithFests = Prisma.subLocationGetPayload<{
	include: {
		festivals: true;
	};
}>;
