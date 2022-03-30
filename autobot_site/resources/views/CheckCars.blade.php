<!DOCTYPE html>
<html>
<head>
    <title>Getting Started with jQuery Grid</title>
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css" />
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
    <form action="{{ route('logout') }}" method="POST">
        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
        <button type="submit">Выйти</button>
    </form>
    <table id="grid"></table>
    <script type="text/javascript">
    var grid;

    function Dob(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
                
            });
            if (confirm('Вы уверены?')) {
                var record = {
                    mark1: e.data.record.mark1,
                    id_telegramm: e.data.record.id_telegramm,
                    number: e.data.record.number,
                    id: e.data.record.id,
                    approved: 1

                };
                $.ajax({ url: '/check_cars/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Nice.');
                    grid.reload();
                })
                .fail(function () {
                    alert('Ошибка сохранения.');
                });
            }
        }
        function Del(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
            });
            if (confirm('Вы уверены?')) {
                var record = {
                    mark1: e.data.record.mark1,
                    id_telegramm: e.data.record.id_telegramm,
                    number: e.data.record.number,
                    id: e.data.record.id,
                    approved: 2
                };
                $.ajax({ url: '/check_cars/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Nice.');
                    grid.reload();
                })
                .fail(function () {
                    alert('Ошибка сохранения.');
                });
            }
        }
        $(document).ready(function () {
            grid = $('#grid').grid({
                dataSource: '/check_cars/',
                columns: [

                    { field: 'mark1', title: 'Марка', sortable: true},
                    { field: 'id_telegramm', title: 'ID телеграмм пользователя'},
                    { field: 'number', title: 'Номер машины'},
                    { field: 'id', title: 'id'},
                    { field: 'approved', title: 'Действия'},
                    { width: 124, tmpl: '<button>Добавить</button>', align: 'center', events: { 'click': Dob } },
                    { width: 124, tmpl: '<button>Бан</button>', align: 'center', events: { 'click': Del } }
                ],
                pager: { limit: 5 }
            });
        });
    </script>
</body>
</html>





            

            