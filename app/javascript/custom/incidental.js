import sortable from 'custom/html5sortable';

if (window.location.href.indexOf("search_dpla") > -1) {
    $( document ).ready(function() {
        var resultsModal = new bootstrap.Modal($('#searchResults'), {
            focus: true
        });
        resultsModal.show();
    });
}
$( document ).ready(function() {
sortable('.o-sortable1', {
    acceptFrom: '.o-sortable2'
    });
sortable('.o-sortable2', {
    acceptFrom: '.o-sortable1'
    });

});