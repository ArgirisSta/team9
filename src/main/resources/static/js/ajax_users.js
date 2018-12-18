(function ($) {
    var API_URL = 'admin/index';
    var error_message = 'No Owners available right now.';
    var $tableSelector = $('table#PersonsbyAfm');

    var $tableBody = $tableSelector.find('tbody');

    function getItems(success, error) {
        $.ajax({
            url: API_URL,
            method: 'GET'
        }).done(function (response) {
            success(response);
        }).fail(function (response) {
            error();
            console.log(response);
        });

    }

})(jQuery);

(function ($) {
    var API_URL = 'admin/Users';
    var error_message = 'No Owners available right now.';
    var $tableSelector = $('table#Users');

    var $tableBody = $tableSelector.find('tbody');

    function getItems(success, error) {
        $.ajax({
            url: API_URL,
            method: 'GET'
        }).done(function (response) {
            success(response);
        }).fail(function (response) {
            error();
            console.log(response);
        });

    }

})(jQuery);