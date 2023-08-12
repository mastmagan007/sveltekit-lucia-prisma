import { writable } from "svelte/store"

export interface SearchStoreModel<T extends Record<PropertyKey, any>> {
	data: T[]
	filtered: T[]
	search: string
	selectedCity:string
	sortOption:string
}

export const createSearchStore = <T extends Record<PropertyKey, any>>(
	data: T[],
) => {
	const { subscribe, set, update } = writable<SearchStoreModel<T>>({
		data: data,
		filtered: data,
		search: "",
		selectedCity:'',
		sortOption:'',

	})

	return {
		subscribe,
		set,
		update,
	}
}

export const searchHandler = <T extends Record<PropertyKey, any>>(
	store: SearchStoreModel<T>,
  ) => {
	const searchTerm = store.search.toLowerCase() || "";
	const cityFilter = store.selectedCity.toLowerCase();
	
	store.filtered = store.data.filter((item) => {
	  const matchSearch = item.searchTerms.toLowerCase().includes(searchTerm);
	  const matchCity = cityFilter ? item.city.toLowerCase() === cityFilter : true;
	  return matchSearch && matchCity;
	});

	if (store.sortOption === "priceLowToHigh") {
		store.filtered.sort((a, b) => a.listPrice - b.listPrice);
	  } else if (store.sortOption === "priceHighToLow") {
		store.filtered.sort((a, b) => b.listPrice - a.listPrice);
	  }
  };
  


