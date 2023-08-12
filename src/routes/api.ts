import { prisma } from '$lib/server/prisma';

export async function get() {
    try {
        const properties = await prisma.property.findMany();
        return {
            status: 200,
            body: properties
        };
    } catch (error) {
        return {
            status: 500,
            body: { message: 'Internal server error' }
        };
    }
}
