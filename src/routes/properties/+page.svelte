<script lang="ts">
	import { createSearchStore, searchHandler } from '$lib/stores/search'
	import { onDestroy } from 'svelte'
	import type { PageData } from './$types'

	export let data: PageData

	type Property = {
		title: string
		listing_id: String
		city: String
		state: String
		addRooms: String
		area: number
		area_units: String
		listPrice: number
		type: String
		remarks: String
		yearBuilt: number
		totalRooms: String
		amenities: String[]
		utilities: String[]
		securityFeatures: String[]
		modification_timestamp: Date
		propertyMedia: String[]
		searchTerms: string
	}

	const searchProperties: Property[] = data.properties.map((value: Property) => ({
		...value,
		searchTerms: `${value.title} ${value.city} ${value.state}`
	}))

	let cityOptions = Array.from(new Set(searchProperties.map(property => property.city)));

	let sortOption = "default";

	const searchStore = createSearchStore(searchProperties)

	const unsubscribe = searchStore.subscribe((model) => searchHandler(model))

	onDestroy(() => {
		unsubscribe()
	})
</script>


<div class="container-fluid innerPageTopBanner"
    style="background: url({'lib/images/mainBannerNew-1.jpg'}) center center no-repeat;">
    <div class="container">
        <div class="row innerPageTopBannerPadding centered ">
            <div class="col-md-10">
                <div class="innerPageTopBannerText propertiesPage">
                    <h1>Search Homes</h1>
                    <form id="property-filter-form">
                
                        <div class="searchBar">

                          
                            <div class="form-group flex-grow-1">
								<input type="search" placeholder="Search..." bind:value={$searchStore.search} />
                            </div>
                            <div class="form-group">
                                <select bind:value={$searchStore.selectedCity}>
									<option value="">All Cities</option>
									{#each cityOptions as city}
									  <option value={city}>{city}</option>
									{/each}
								  </select>
							
                            </div>
                            <div class="form-group">
								{#each $searchStore.filtered as value}
								<div class="value">
									<h2>{value.title}</h2>
									<p>{value.city}</p>
									<p>Price: ${value.listPrice}</p>
								</div>
							{/each}
								
                            </div>
                            <!-- <div class="form-group">
                                <button class="myBtn" type="submit">Search</button>
                            </div> -->
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="container">
	<h1>Search/Filter</h1>
	<input type="search" placeholder="Search..." bind:value={$searchStore.search} />
	<select bind:value={$searchStore.selectedCity}>
		<option value="">All Cities</option>
		{#each cityOptions as city}
		  <option value={city}>{city}</option>
		{/each}
	  </select>

	  <select bind:value={$searchStore.sortOption}>
		<option value="default">Default</option>
		<option value="priceLowToHigh">Price: Low to High</option>
		<option value="priceHighToLow">Price: High to Low</option>
	  </select>
	  
	  
</div>
<div class="value-grid">
	{#each $searchStore.filtered as value}
		<div class="value">
			<h2>{value.title}</h2>
			<p>{value.city}</p>
			<p>Price: ${value.listPrice}</p>
		</div>
	{/each}
</div> -->

<div class="container-fluid">
    <div class="container">


        <div class="row py-3 py-lg-4 py-5">

        </div>

    </div>
</div>

