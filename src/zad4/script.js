$(document).ready(function() {
    $('.offer-item').hover(function() {
        $(this).css('background-color', '#ccc');
        $(this).find('a').css('color', '#fff');
    }, function() {
        $(this).css('background-color', '');
        $(this).find('a').css('color', '#333');
    });
});


$(document).ready(function() {

    function displayProducts(category, page) {
        $.ajax({
            url: "products.php",
            type: "GET",
            data: { category: category, page: page },
            success: function(response) {
                $("#product-list").html(response);
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    }

    displayProducts("", 1);

    $("#category").change(function() {
        var category = $(this).val();
        displayProducts(category, 1);
    });

    $(document).on("click", "#product-list .pagination a", function(e) {
        e.preventDefault();
        var category = $("#category").val();
        var page = $(this).attr("data-page");
        displayProducts(category, page);
    });
});


$(document).ready(function() {
    function displayProducts(category, page) {
        $.ajax({
            url: "products.php",
            type: "GET",
            data: { category: category, page: page },
            success: function(response) {
                $("#product-list").html(response);
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    }
    
    displayProducts("", 1);

    $("#category").change(function() {
        var category = $(this).val();
        displayProducts(category, 1);
    });
});
