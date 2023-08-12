export function filterProperties(properties, filters) {
    const { searchTitle} = filters;
  
    return properties.filter((property) => {
      let matches = true;
  
      if (searchTitle && !property.title.includes(searchTitle)) {
        matches = false;
      }
  
      return matches;
    });
  }
  