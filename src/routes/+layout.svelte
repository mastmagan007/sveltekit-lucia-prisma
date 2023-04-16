<script lang="ts">
	import "../app.css";
  
    import type { PageData } from './$types'
    export let data: PageData
</script>

<div class="bg-dark">
	<div class=" ">
		<nav class="flex justify-between items-center bg-myPink py-4">
		<ul>
			<li>
				<strong>
					<a class="text-white" href="/"> Blogly </a>
				</strong>
			</li>
		</ul>
		
			<form method="POST" class="flex items-center">
				<ul class="text-white flex gap-3 items-center">
				<li><a href="/">Home</a></li>
				{#if !data.user}
					<li><a href="/register">Register</a></li>
					<li><a href="/login" role="button">Login</a></li>
				{:else}
					<li>
				<a href="/dashboard">Dashboard</a></li>
				<li>
						<button class="btnSec text-dark" formaction="/logout" type="submit"  data-title="Log Out"/>
					</li>
				{/if}
			</ul>
			</form>
		
	</nav>
	<slot></slot>
	</div>


	
</div>
