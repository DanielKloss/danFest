import type { Prisma } from '@prisma/client';

export type locationWithFests = Prisma.locationGetPayload<{
	include: {
		festivals: true;
	};
}>;
