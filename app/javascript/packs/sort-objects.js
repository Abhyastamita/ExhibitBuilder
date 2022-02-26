import sortable from 'custom/html5sortable';
import imagepicker from 'custom/image-picker';

sortable('.sort', {
    forcePlaceholderSize: true,
    placeholderClass: 'ph-class',
});

$(".sort").change(function() {
    sortable('.sort', {
        forcePlaceholderSize: true,
        placeholderClass: 'ph-class',
    });
});

$(".nested-fields option").each(function() {
    var digital_object_id = $(this).val();
    var data_img = $("#obj-" + digital_object_id);
    $(this).attr("data-img-src","https://dp.la/thumb/" + data_img.val());
    $(this).attr("data-img-label", encodeURIComponent(data_img.text()));
});

$("select").imagepicker({
    show_label: true,
    hide_select: false
});

$("form").submit(function() {
    //$(".o-sortable2 option").prop('selected', true);
    var chosen = $(".nested-fields");
    chosen.each(function(index){
        $(this).find(".object-order").val(index);
    });
    return true;
});