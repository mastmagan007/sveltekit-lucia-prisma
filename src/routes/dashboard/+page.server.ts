import type { Actions, PageServerLoad } from "./$types"
import { prisma } from "$lib/server/prisma"
import { error, fail, redirect } from "@sveltejs/kit"
import { supabase } from '$lib/server/supabase'; // Import your Supabase client
export const actions: Actions = {
	createArticle: async ({ request, locals }) => {
		const { user, session } = await locals.validateUser()
		if (!(user && session)) {
			throw redirect(302, '/')
		}

		const { title, content, image } = Object.fromEntries(
			await request.formData()
		) as Record<string, string | File>

		// Upload image to Supabase storage bucket
		let imageUrl = null
		if (image) {
			const { data, error } = await supabase.storage
				.from('lifelearn')
				.upload(image.name, image)
			if (error) {
				console.error(error)
				return fail(500, { message: 'Could not upload image.' })
			}
			 imageUrl = `https://lifelearn.supabase.in/storage/v1/object/public/${data?.Key}`;

		}

		try {
			await prisma.article.create({
				data: {
					title,
					content,
					imageUrl,
					userId: user.userId,
				},
			})
		} catch (err) {
			console.error(err)
			return fail(500, { message: 'Could not create the article.' })
		}

		return {
			status: 201,
		}
	},
}