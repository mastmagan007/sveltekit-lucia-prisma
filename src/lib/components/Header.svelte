<script>
	import { page } from '$app/stores';
	import Icon from '@iconify/svelte';
</script>

<header class="bg-white shadow">
	<div class="container">
		<div class="grid grid-cols-3 py-5 items-center">
			
				<a href="https://kit.svelte.dev">
					<!-- <img src={logo} alt="SvelteKit" /> -->
					<span class="webTitle text-2xl font-bold">Learn Life</span>
				</a>
	
		
			<nav class="justify-self-center">
				<ul class="flex gap-10 ">
					<li aria-current={$page.url.pathname === '/' ? 'page' : undefined}>
						<a href="/">Home</a>
					</li>
					<li aria-current={$page.url.pathname.startsWith('/courses') ? 'page' : undefined}>
						<a href="/sverdle" class="flex items-center gap-1">Courses<Icon class="text-xl" icon="mdi:chevron-down" /></a>
					</li>
					<li aria-current={$page.url.pathname.startsWith('/about') ? 'page' : undefined}>
						<a href="/sverdle" class="flex items-center gap-1">About<Icon class="text-xl" icon="mdi:chevron-down" /></a>
					</li>
				</ul>
			</nav>
		
			<div class="flex items-center gap-2 justify-self-end">
				<a href="https://github.com/sveltejs/kit" class="text-pink-900 text-2xl">
					<Icon icon="material-symbols:lock-open-rounded" />
				</a>
				<a href="#" class="btnPrimary">Get Started</a>
			</div>
		</div>
		
	</div>
</header>

<style>
	header{
		position: fixed;
		width: 100%;
        top: 0;
		z-index: 9999;


	}

	


	
</style>
