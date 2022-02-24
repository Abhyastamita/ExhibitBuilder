import sortable from 'custom/html5sortable';

sortable('.o-sortable1', {
    acceptFrom: '.o-sortable2'
    });
sortable('.o-sortable2', {
    acceptFrom: '.o-sortable1'
    });

$("form").submit(function() {
    $(".o-sortable2 option").prop('selected', true);
    return true;
});