import sortable from 'custom/html5sortable';
import imagepicker from 'custom/image-picker';

sortable('.sort', {
    forcePlaceholderSize: true,
    placeholderClass: 'ph-class',
});

function regenerate () {
    sortable('.sort', {
        forcePlaceholderSize: true,
        placeholderClass: 'ph-class',
    });

    $(".nested-fields option").each(function() {
        var digital_object_id = parseInt($(this).val());
        if (typeof digital_object_json[digital_object_id] != 'undefined') {
            $(this).attr("data-img-src","https://dp.la/thumb/" + digital_object_json[digital_object_id].img_id);
            $(this).attr("data-img-label", digital_object_json[digital_object_id].title);
        }
    });

    $("select").imagepicker({
        show_label: true,
        hide_select: false
    });

    $(".image_picker_image").addClass("img-fluid");
}

regenerate();

$('#digital_objects').on('new_object', function(e) {
    regenerate();    
});

$("form").submit(function() {
    //$(".o-sortable2 option").prop('selected', true);
    var chosen = $(".nested-fields");
    chosen.each(function(index){
        $(this).find(".object-order").val(index);
    });
    return true;
});