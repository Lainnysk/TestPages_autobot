<!DOCTYPE html>
<html>
<head>
    <title>Getting Started with jQuery Grid</title>
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css" />
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
    <table id="grid"></table>
    <script type="text/javascript">
        function Update(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
            });
            if (confirm('Are you sure?')) {
                var record = {
                    id: $('#id').val(),
                    name: $('#name').val(),
                    phone_number: $('#phone_number').val(),
                    lot_number: $('#lot_number').val(),
                    telegram_id: $('#telegram_id').val(),
                    approved: $('#approved').val()
                };
                $.ajax({ url: '/telegram_user/update', success: { data: { records: record} }, method: 'POST' })
                    .done(function () {
                        grid.reload();
                    })
                    .fail(function () {
                        alert('Failed to update.');
                    });
            }
        }
        $(document).ready(function () {
            var grid = $('#grid').grid({
                dataSource: '/telegram_user/',
                columns: [
                    { field: 'id', title: 'id', hidden: true},
                    { field: 'name', title: 'ФИО', sortable: true},
                    { field: 'phone_number', title: 'Номер телеофна'},
                    { field: 'lot_number', title: 'Номер участка'},
                    { field: 'telegram_id', title: 'ID Телеграма'},
                    { field: 'approved', title: 'Действия'},
                    { width: 124, tmpl: '<button>Бан</button>', align: 'center', events: { 'click': Update } }
                ],
                pager: { limit: 5 }
            });
        });
    </script>
</body>
</html>
