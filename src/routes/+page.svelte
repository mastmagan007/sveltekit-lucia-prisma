

<script lang="ts">
	import welcome from '$lib/images/svelte-welcome.webp';
	import tutor from '$lib/images/tutorDP.png';
	import testimonialDp from '$lib/images/testimonialsDp.jpg';

	import zoo from '$lib/images/zoology.png';
	import bot from '$lib/images/botany.png';
	import bioTech from '$lib/images/enzyme.png';
	import micro from '$lib/images/micro.png';
	import neuro from '$lib/images/neurobiology.png';
	import antonomy from '$lib/images/anatomy.png';

	import YoutubeEmbed from '$lib/components/YoutubeEmbed.svelte';
	import Icon from '@iconify/svelte';
	import CategoryBox from '$lib/components/CategoryBox.svelte';
	let id = 'gG7uCskUOrA';
	import type { PageData } from './$types'

export let data: PageData

$: ({ articles } = data)

	import Youtube from 'svelte-youtube-embed';
</script>

<svelte:head>
	<title>Home</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>
<!-- Sec-1 -->
<section class="container banner mb-10 bg-slate-50">
	<div class="banner flex flex-col justify-evenly items-center gap-10">
		<div class="tutor z-20">
			<img src={tutor} alt="" width="500" />
		</div>
		<div class=" bannerInner flex flex-col items-center z-10">
			<span class="mt-7">Welcome To LearnLife</span>
			<h1>
				Meet The Professional<br />Mentor
			</h1>
		</div>
		<div class="flex testimonials justify-between pt-30 z-10">
			<div class="basis-[300px]">
				<Icon class="text-orange-500 text-4xl" icon="ri:double-quotes-l" />
				<p>
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio laboriosam laudantium, nisi
					ex quam tempore dolor.
				</p>
			</div>
			<div class="basis-[300px]">
				<div class="stars flex justify-end text-orange-500 text-2xl">
					<Icon icon="material-symbols:star-rate-rounded" /><Icon
						icon="material-symbols:star-rate-rounded"
					/><Icon icon="material-symbols:star-rate-rounded" /><Icon
						icon="material-symbols:star-rate-rounded"
					/><Icon icon="material-symbols:star-rate-rounded" />
				</div>

				<p class="text-end">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio laboriosam laudantium, nisi
					ex quam tempore dolor.
				</p>
			</div>
		</div>
		<div class="cta flex gap-4 bg-slate-50 px-5 py-3 z-20 rounded-full">
			<a href="#" class="btnSec" data-title="I'm Mentor" />
			<a href="#" data-title="" class="btnPrimary">I'm Student</a>
		</div>
	</div>
</section>

<!-- Sec-2 -->
<div class="Sec-2 flex my-20 gap-40 md-gap-70 container">
	<div class="basis-1/2 lSec text-slate-50 flex flex-col gap-5">
		<h2 class="text-4xl text-slate-50 font-medium">Learner Outcomes<br />On LearnLife</h2>
		<p class="text-xl">
			Start, switch, or advance your career with more than 100+ courses in lifelearn!
		</p>
		<div class="row flex gap-5 mt-5">
			<h3 class="text-6xl font-medium">87%</h3>

			<p class="text-sm">
				Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nemo aliquam, maiores corporis
				numquam vitae qui voluptates eaque veniam labore. Ut!
			</p>
		</div>
	</div>
	<div class="rSec basis-1/2 flex text-slate-50 gap-4">
		<div
			class="box basis-1/2 border transition ease-in-out duration-500 border-slate-400 rounded-3xl p-5 flex flex-col justify-around items-start hover:border-pink-900"
		>
			<div class="stars flex justify-end text-orange-500 text-xl">
				<Icon icon="material-symbols:star-rate-rounded" /><Icon
					icon="material-symbols:star-rate-rounded"
				/><Icon icon="material-symbols:star-rate-rounded" /><Icon
					icon="material-symbols:star-rate-rounded"
				/><Icon icon="material-symbols:star-rate-rounded" />
			</div>
			<p class="text-sm leading-5">
				Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perspiciatis beatae officia
				dolores consequuntur. Culpa, placeat natus.
			</p>
			<div class="flex gap-3">
				<div class="thumb">
					<img class="border-spacing-1 rounded-full w-10" src={testimonialDp} alt="" />
				</div>
				<ul class="">
					<li class="text-sm font-medium">Maryam Jabeen</li>
					<li class="text-xs">MSc. Biology</li>
				</ul>
			</div>
		</div>
		<div
			class="container box basis-1/2 border border-slate-400 rounded-3xl p-5 flex flex-col justify-around items-start hover:border-pink-900 transition ease-in-out duration-500"
		>
			<div class="stars flex justify-end text-orange-500 text-xl">
				<Icon icon="material-symbols:star-rate-rounded" /><Icon
					icon="material-symbols:star-rate-rounded"
				/><Icon icon="material-symbols:star-rate-rounded" /><Icon
					icon="material-symbols:star-rate-rounded"
				/><Icon icon="material-symbols:star-rate-rounded" />
			</div>
			<p class="text-sm leading-5">
				Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perspiciatis beatae officia
				dolores consequuntur. Culpa, placeat natus.
			</p>
			<div class="flex gap-3">
				<div class="thumb">
					<img class="border-spacing-1 rounded-full w-10" src={testimonialDp} alt="" />
				</div>
				<ul class="">
					<li class="text-sm font-medium">Maryam Jabeen</li>
					<li class="text-xs">MSc. Biology</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- Sec-3 -->

<div class="sec-3 my-20 container">
	<div class=" flex justify-around rounded-3xl bg-white h-36 items-center">
		<ul>
			<li class="text-3xl font-bold text-pink-900">800K+</li>
			<li class="">Classes</li>
		</ul>
		<ul>
			<li class="text-3xl font-bold text-pink-900">10K+</li>
			<li class="">Members</li>
		</ul>
		<ul class="">
			<li class="text-3xl font-bold text-pink-900">34K+</li>
			<li class="">Mentor</li>
		</ul>
		<ul>
			<li class="text-3xl font-bold text-pink-900">4.8+</li>
			<li class="">Rating</li>
		</ul>
	</div>
</div>

<div class="sec-4 container my-10">
	<div class="bg-white py-10 text-dark flex flex-col items-center rounded-3xl">
		<a class="btnPrimary uppercase font-bold" href="#">Why LifeLearn</a>
		<h2 class="text-3xl my-5">Learners Outcomes On LearnLife</h2>
		<p class="mb-10">
			Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium sit ipsam sed id,
			voluptas dolore.
		</p>
		<div class="rounded-full w-full px-20 sm:px-30 lg:px-50">
			<YoutubeEmbed embedId={id} />
		</div>
	</div>
</div>

<div class="sec-5 container my-10">
	<div class="sec5Inner rounded-3xl bg-white py-10 text-dark">
		<div class="flex justify-between items-end px-12 pb-12">
			<div class="lSec">
				<a class="btnSec block" data-title="Lets Start" href="" />
				<h2 class="text-3xl pt-4">Explore Inspiring Online Classes</h2>
			</div>
			<a href="" class="uppercase font-bold font-sans">See All</a>
		</div>
		<div class="grid grid-cols-3 px-12 gap-10">
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
			<div
				class="group drop-shadow-lg rounded-2xl overflow-hidden border border-1 border-pink-900 transition-all ease-in-out duration-200"
			>
				<div class="relative overflow-hidden">
					<div
						class="overlay absolute z-10 left-0 -top-80 group-hover:-top-0 bg-dark w-full h-full opacity-70 transition-all ease-in-out duration-500 flex items-center justify-center"
					>
						<a href="" class="text-white text-3xl font-medium"
							><Icon icon="line-md:external-link" /></a
						>
					</div>
					<img
						class="rounded-2xl w-64 pt-[.3rem] mx-auto transition-all ease-in-out duration-200 group-hover:rounded-none group-hover:scale-110"
						src={testimonialDp}
						alt=""
					/>
				</div>
				<div class="relative">
					<div
						class="overlay -z-10 absolute left-0 -bottom-64 group-hover:bottom-0 bg-pink-900 w-full h-full opacity-70 transition-all ease-in-out duration-500"
					/>
					<h2 class="py-5 px-3 transition-all ease-in-out duration-200 group-hover:text-white">
						Fundamentals Of Biology and Zoology
					</h2>
					<div
						class="flex items-center transition-all ease-in-out duration-200 justify-between px-3 pb-3 z-10"
					>
						<div
							class="author pr-3 flex items-center z-10 gap-2 transition ease-in-out duration-700 text-pink-900 rounded-full border border-pink-900 shadow-sm relative before:-z-10 before:absolute before:w-7 group-hover:before:w-full before:h-full before:bg-slate-50 before:rounded-full before:transition-all before:duration-300"
						>
							<img class="border-spacing-1 rounded-full w-7 border" src={testimonialDp} alt="" />
							<a href="" class="font-bold text-sm transition-all ease-in-out duration-200"
								>Tariq Zahid</a
							>
						</div>
						<div
							class="rating rounded-full px-3 py-1 border bg-pink-900 flex items-center text-white text-sm"
						>
							<Icon icon="material-symbols:star-rate-rounded" /> 4.8
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sec-6 container px-12 mt-20">
			<div class="flex justify-between items-end pb-12">
				<div class="lSec">
					<a class="btnSec block" data-title="Top Subjects" href="" />
					<h2 class="text-3xl pt-4">Explore Fundamental Subjects</h2>
				</div>
				<a href="" class="uppercase font-bold font-sans">See All</a>
			</div>
			<div class="grid grid-cols-4 gap-10">
				<CategoryBox title={'Zoology'} icon={zoo}  />
				<CategoryBox title={'Micro Biology'} icon={micro}/>
				<CategoryBox title={'Bio Technology'} icon={bioTech}  />
				<CategoryBox title={'Botany'} icon={bot}  />
				<CategoryBox title={'Neurology'} icon={neuro}  />
				<CategoryBox title={'Antonomy'} icon={antonomy} />
			</div>
		</div>
	</div>
</div>

{#each articles as article}
<article>
	<header>{article.title}</header>
	<p>
		{article.content}
	</p>
	<img src={article.imageUrl} alt="" width="500" />

	
	{#if article.userId === data.user?.userId}
		<form action="?/deleteArticle&id={article.id}" method="POST">
			<button type="submit" class="outline secondary">Delete Article</button>
		</form>
		<a href="/{article.id}" role="button" class="outline constrast" style="width: 100%;">Edit Article</a
		>
	{/if}
</article>
{/each}

<style>
	.banner {
		border-bottom-left-radius: 200px;
		border-bottom-right-radius: 200px;

		height: 100vh;
		overflow: hidden;
		position: relative;
	}
	/* .bannerInner {
		display: flex;
		flex-direction: column;
		align-items: center;
        justify-content: center;
        z-index: 9999;
	} */

	span {
		border: 1px solid var(--dark);
		padding: 10px 16px;
		border-radius: 20px;
		font-size: 14px;
		line-height: 14px;
		font-weight: 600;
		text-transform: uppercase;
	}

	h1 {
		font-family: 'Kyiv Sans' !important;
		font-size: 5rem;
		text-align: center;
		line-height: 5rem;
		margin-top: 16px;
	}
	.tutor {
		position: absolute;

		bottom: 0;
	}
	.banner:before {
		position: absolute;
		content: '';
		width: 800px;
		height: 800px;
		border-radius: 50%;
		background: var(--pink);
		left: 50%;
		bottom: -25rem;
		transform: translateX(-50%);
		z-index: 0;
	}
</style>

