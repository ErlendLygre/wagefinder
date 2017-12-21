var client = algoliasearch('7VBXXTSGIJ', '44be3b2603c7ed5c32df6dd59bf114f9');
var index = client.initIndex('Company');
index.search(index.name, { hitsPerPage: 100, page: 0 })
  .then(function searchDone(content) {
  autocomplete("#aa-search-input",
    { hint: false }, {
    source: autocomplete.sources.hits(index, {hitsPerPage: 5}),
    displayKey: 'name',
    templates: {
    suggestion: function(suggestion) {
      return '<span>' +
        suggestion._highlightResult.name.value + '</span>'
      }
    }
  });
}).catch(function searchFailure(err) {
    console.error(err);
});
