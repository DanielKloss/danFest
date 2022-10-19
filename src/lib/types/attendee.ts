import type { Prisma } from "@prisma/client";

export type attendeeWithFests = Prisma.attendeeGetPayload<{
	include: {
		festivals: true;
	};
}>;