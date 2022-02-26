import sortable from 'custom/html5sortable';

sortable('.o-sortable1', {
    acceptFrom: '.o-sortable2'
    });
sortable('.o-sortable2', {
    acceptFrom: '.o-sortable1'
    });

sortable('.sort', {
    forcePlaceholderSize: true,
    placeholderClass: 'ph-class',
    hoverClass: 'bg-maroon yellow', 
});

$(".sort").change(function() {
    sortable('.sort', {
        forcePlaceholderSize: true,
        placeholderClass: 'ph-class',
        hoverClass: 'bg-maroon yellow', 
    });
});

$("form").submit(function() {
    //$(".o-sortable2 option").prop('selected', true);
    var chosen = $(".nested-fields");
    chosen.each(function(index){
        $(this).find(".object-order").val(index);
    });
    return true;
});