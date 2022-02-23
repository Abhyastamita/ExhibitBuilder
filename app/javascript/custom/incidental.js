// alert("This is getting loaded!");

if (window.location.href.indexOf("search_dpla") > -1) {
    $( document ).ready(function() {
        var resultsModal = new bootstrap.Modal($('#searchResults'), {
            focus: true
        });
        resultsModal.show();
    });
}

$(document).ready(function(){
    var test = $().jquery
    console.log('custom/scripts.js JQuery version ==> ' + test);
  
    var test_ui = $.ui ? $.ui.version || "pre 1.6" : 'jQuery-UI not detected';
    console.log('custom/scripts.js UI version ==> ' + test_ui);
  });

