<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="UTF-8">
        <title>Охранник</title>
        <link rel="stylesheet" href="css/security.css">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
            <input value = "+ * users" type="button" id="btnUpdateUsers" class="btn btn-default"/>
            <table id="grid2" class="table table-sortable"></table>
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

    function Dob(e) {
            $.ajaxSetup({
                headers : {
                    'X-CSRF-Token' : "{{ csrf_token() }}"
                }
                
            });
            if (confirm('Вы уверены?')) {
                var record = {
                    num_car: e.data.record.num_car,
                    model: e.data.record.model,
                    add_info: e.data.record.add_info,
                    dateTime_order: e.data.record.dateTime_order,
                    comment: e.data.record.comment,
                    id_reg_car: e.data.record.id_reg_car,
                    id_user: e.data.record.id_user,
                    owner: e.data.record.owner,
                    approved: 1

                };
                $.ajax({ url: '/reg_cars/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Выполнено.');
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
                    num_car: e.data.record.num_car,
                    model: e.data.record.model,
                    add_info: e.data.record.add_info,
                    dateTime_order: e.data.record.dateTime_order,
                    comment: e.data.record.comment,
                    id_reg_car: e.data.record.id_reg_car,
                    id_user: e.data.record.id_user,
                    owner: e.data.record.owner,
                    approved: 2
                };
                $.ajax({ url: '/reg_cars/update', data: record, method: 'POST' })  
                .done(function () {
                    alert('Выполнено.');
                    grid.reload();
                })
                .fail(function () {
                    alert('Ошибка в отклонении.');
                });
            }
        }

        function Deleete(e) {
                if (confirm('Вы уверены')) {
                    $.ajax({ url: '/reg_cars/delete', data: { id: e.data.id }, method: 'POST' })
                        .done(function () {
                            alert('Выполнено.');
                            grid.reload();
                        })
                        .fail(function () {
                            alert('Отказ в удалении.');
                        });
                }
            }

            let timerId = setInterval(() => {

            var xhr = new XMLHttpRequest()
            xhr.open('GET', 'reg_cars/getCount', true)
            xhr.send()

            xhr.onreadystatechange = function() {
                if (xhr.readyState != 4) {
                    return
            }

            var UsersCount = JSON.parse(xhr.responseText)   
            var newUsersCount = UsersCount.count - grid.count(true)
            $('#btnUpdateUsers').val("+" + newUsersCount)
            if (xhr.status === 200) {
                    console.log('result', xhr.responseText)
                } else {
                    console.log('err', xhr.responseText)
                }
            }            
            }, 2000);

        $(document).ready(function () {
            grid = $('#grid2').grid({
                uiLibrary: 'bootstrap',
                columns: [
                    { field: 'model', title: 'Марка', sortable: true},
                    { field: 'num_car', title: 'Номер машины', sortable: true},
                    { field: 'dateTime_order', title: 'Дата', sortable: true},
                    { field: 'add_info', title: 'Инфо', sortable: true},
                    { field: 'comment', title: 'Коментарий'},
                    { field: 'id_reg_car', title: 'id машины', hidden: true},
                    { field: 'id_user', title: 'id пользователя', hidden: true},
                    { field: 'owner', title: 'Собственность', sortable: true},
                    { field: 'approved', title: 'Одобрение', sortable: false},
                    { title: '', field: '', width: 35, type: 'icon', icon: 'glyphicon-plus', tooltip: 'Одобрение', events: { 'click': Dob} },
                    { title: '', field: '', width: 35, type: 'icon', icon: 'glyphicon-minus', tooltip: 'Отклонение', events: { 'click': Del } },
                    { title: '', field: '', width: 35, type: 'icon', icon: 'glyphicon-pencil', tooltip: 'Редактировать', events: { 'click': Dob } },
                    { title: '', field: '', width: 36, type: 'icon', icon: 'glyphicon-remove', tooltip: 'Удалить', events: { 'click': Deleete } }
                ],
                dataSource: '/reg_cars/',
                sort: true,
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
                        { field: 'id_role', width:55, align:'center', title: 'Роль', sortable: false},
                    ],
                    pager: { limit: 5, sizes: [2, 5, 10, 20] }
                });
            });
        </script>
    </body>
</html>