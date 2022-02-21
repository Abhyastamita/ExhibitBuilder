// alert("This is getting loaded!");

if (window.location.href.indexOf("search_dpla") > -1) {
    $( document ).ready(function() {
        var resultsModal = new bootstrap.Modal($('#searchResults'), {
            focus: true
        });
        resultsModal.show();
    });
}
