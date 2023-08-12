<script lang="ts">
	import "../app.css";
  
    import type { PageData } from './$types'
</script>

<div class="">
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
			
					<li>
			
			</ul>
			</form>
		
	</nav>
	<slot></slot>
	</div>


	
</div>
