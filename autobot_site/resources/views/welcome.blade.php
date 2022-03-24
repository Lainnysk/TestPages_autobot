<!DOCTYPE html>
<html>
<head>
    <title>Getting Started with jQuery Grid</title>
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css" />
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
</head>
<body>
    <table id="grid"></table>
    <script type="text/javascript">
        $(document).ready(function () {
            var grid = $('#grid').grid({
                dataSource: '/telegram_user/',
                columns: [
                    { field: 'name', title: 'ФИО', sortable: true},
                    { field: 'phone_number', title: 'Номер телеофна'},
                    { field: 'lot_number', title: 'Номер участка'},
                    { field: 'telegram_id', title: 'ID Телеграма'},
                    { field: 'approved', title: 'Действия'}
                ],
                pager: { limit: 5 }
            });
        });
    </script>
</body>
</html>
