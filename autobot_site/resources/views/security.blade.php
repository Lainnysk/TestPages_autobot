<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Охранник</title>
        <link rel="stylesheet" href="css/security.css">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <link href="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" rel="stylesheet" type="text/css" />
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </head>
    <body>
        <div class="maincontainer">
            <header id="header" class="header">
                <div class="container d-flex justify-content-between align-items-center">
                    <div class="logo">
                        <a href="http://127.0.0.1:8000/">
                            <img src="img/Autobot.png" alt="logo" width="50" height="50">
                        </a>
                    </div>
                    <p class="text1">«Автобот»</p>
                    <nav class="header-nav">
                        <a href="http://127.0.0.1:8000/">Выход</a>
                    </nav>
                </div>
            </header>
            <div class="text2">
                <p>ОХРАНА РАБОТАЕТ КАК <br/>ЧАСЫ!</p>
            </div>
            <p class="text3">ЗАЯВКИ НА ВЪЕЗД</p>
            <table id="grid2"></table>
            <p class="text4">ПОЛЬЗОВАТЕЛИ</p>
            <table id="grid4"></table>  
            <div class="footer" id="foooter">
                <footer>
                    © AVTOBOTS PRODUCTION 2022
                </footer>
            </div>
        </div>        

        <script type="text/javascript">
    var grid;
    function UpAdd(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
            });
            if (confirm('Are you sure?')) {
                var record = {
                    id_user: e.data.record.id_user,
                    name: e.data.record.name,
                    surname: e.data.record.surname,
                    patronymic: e.data.record.patronymic,
                    phone_number: e.data.record.phone_number,
                    address: e.data.record.address,
                    telegram_id: e.data.record.telegram_id,
                    approved: 1
                };
                $.ajax({ url: '/users/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Nice.');
                    grid.reload();
                })
                .fail(function () {
                    alert('Failed to save.');
                });
            }
        }
        function Update(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
            });
            if (confirm('Are you sure?')) {
                var record = {
                    id_user: e.data.record.id_user,
                    name: e.data.record.name,
                    surname: e.data.record.surname,
                    patronymic: e.data.record.patronymic,
                    phone_number: e.data.record.phone_number,
                    address: e.data.record.address,
                    telegram_id: e.data.record.telegram_id,
                    approved: 2
                };
                $.ajax({ url: '/users/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Nice.');
                    grid.reload();
                })
                .fail(function () {
                    alert('Failed to save.');
                });
            }
        }
        $(document).ready(function () {
            grid = $('#grid2').grid({
                primaryKey: 'id',
                dataSource: '/users/index',
                uiLibrary: 'bootstrap',
                columns: [
                    { field: 'id_user', title: 'id', hidden: true},
                    { field: 'name', title: 'Имя', sortable: true, colspan: 3}, 
                    { field: 'surname', title: 'Фамилия', sortable: true},
                    { field: 'patronymic', title: 'Отчетство', sortable: true},
                    { width: 120, field: 'phone_number', title: 'Номер телеофна'},
                    { field: 'address', title: 'Номер участка'},
                    { field: 'telegram_id', title: 'ID Телеграма'},
                    { width: 60, field: 'approved', align: 'center', title: 'Статус'},
                    { width: 34, title:'', field: 'Add', align: 'center', type: 'icon', icon: 'glyphicon-plus', tooltip: 'UpAdd', events: { 'click': UpAdd } },
                    { width: 34, title:'', field: 'Update', align: 'center', type: 'icon', icon: 'glyphicon-remove', tooltip: 'Update', events: { 'click': Update } }
                ],
                pager: { limit: 5, sizes: [2, 5, 10, 20] }
            });
        });
    </script>

    






    <script type="text/javascript">
            $.ajaxSetup({
                    headers : {
                        'X-CSRF-Token' : "{{ csrf_token() }}"
                    }
                });
            var grid, dialog, dialogCreate;
            function Edit(e) {
                $('#id').val(e.data.id);
                $('#name').val(e.data.record.name);
                $('#email').val(e.data.record.email);
                $('#password').val(e.data.record.password);
                $('#user_id').val(e.data.record.user_id);
                dialog.open('Edit user');
            }
            function Create() {
                var record = {
                    name: $('#nameC').val(),
                    email: $('#emailC').val(),
                    password: $('#passwordC').val(),
                    role_id: $('#role_idC').val()
                };
                $.ajax({ url: '/users/create', data: record , method: 'POST' })
                    .done(function () {
                        dialogCreate.close();
                        grid.reload();
                    })
                    .fail(function () {
                        alert('Failed to save.');
                        dialogCreate.close();
                    });
            }
            function Save() {
                var record = {
                    id: $('#id').val(),
                    name: $('#name').val(),
                    email: $('#email').val(),
                    password: $('#password').val(),
                    role_id: $('#role_id').val()
                };
                $.ajax({ url: '/users/update', data: record , method: 'POST' })
                    .done(function () {
                        dialog.close();
                        grid.reload();
                    })
                    .fail(function () {
                        alert('Failed to save.');
                        dialog.close();
                    });
            }
            function Delete(e) {
                if (confirm('Are you sure?')) {
                    $.ajax({ url: '/users/delete', data: { id: e.data.id }, method: 'POST' })
                        .done(function () {
                            grid.reload();
                        })
                        .fail(function () {
                            alert('Failed to delete.');
                        });
                }
            }
            $(document).ready(function () {
                grid = $('#grid4').grid({
                    primaryKey: 'id',
                    dataSource: '/users/index',
                    uiLibrary: 'bootstrap',
                    columns: [           
                        { field: 'id', width:35, align:'center', title: 'ID' },
                        { field: 'name', title: 'Имя', sortable: true },
                        { field: 'email', title: 'Почта', sortable: true },
                        { field: 'password', title: 'Пароль', sortable: true },
                        { field: 'id_role', width:50, align:'center', title: 'Роль', sortable: true },
                    ],
                    pager: { limit: 5, sizes: [2, 5, 10, 20] }
                });
            });
        </script>
    </body>
</html>