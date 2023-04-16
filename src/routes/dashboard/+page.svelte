<script lang="ts">
	import type { PageData } from './$types'

	export let data: PageData


</script>

<div class="container">


	{#if data.user}
		<!-- <form action="?/createArticle" method="POST">
			<div class="flex flex-col py-20 gap-6">
                <h3 class="text-2xl text-white">New Article</h3>
                <div class="title">
                    <label for="title"> Title </label>
                    <input type="text" id="title" name="title" placeholder="Title" class="input input-bordered input-secondary w-full " />

                </div>
               
                <div class="content">
                    <label for="title"> Content </label>
                    <textarea class="textarea textarea-secondary  w-full" placeholder="Bio" id="content" name="content" rows={5}></textarea>
                </div>
               
                
                <button class="btn btn-secondary" type="submit">Add Article</button>
            </div>
			
		</form> -->

		<form action="?/createArticle" method="POST" enctype="multipart/form-data">
			
		  
			<label>
			  Title:
			  <input type="text" name="title" required />
			</label>
		  
			<label>
			  Content:
			  <textarea name="content" required></textarea>
			</label>
		  
			<label>
			  Image:
			  <input type="file" name="image" accept="image/*" />
			</label>
		  
			<button type="submit">Submit</button>
		  </form>
		  
	{/if}
</div>