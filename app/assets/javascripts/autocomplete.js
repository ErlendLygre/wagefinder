var client = algoliasearch('7VBXXTSGIJ', '44be3b2603c7ed5c32df6dd59bf114f9');
var index = client.initIndex('Company');
index.search(index.name, { hitsPerPage: 10, page: 0 })
  .then(function searchDone(content) {
  autocomplete('#aa-search-input',
    { hint: false }, {
    source: autocomplete.sources.hits(index, {hitsPerPage: 5}),
    //value to be displayed in input control after user's suggestion selection
    displayKey: 'name',
    //hash of templates used when rendering dataset
    templates: {
    //'suggestion' templating function used to render a single suggestion
    suggestion: function(suggestion) {
      // console.log(suggestion)
      return '<span>' +
        // suggestion._highlightResult + '</span><span>'
        suggestion.name + '</span>'
      }
    }
  });
}).catch(function searchFailure(err) {
    console.error(err);
});
