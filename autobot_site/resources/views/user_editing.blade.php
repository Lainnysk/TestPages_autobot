<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Редактирование пользователей</title>
        <link rel="stylesheet" href="css/user_editing.css">

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
                    <nav id="header-nav">
                        <a style="color: #FFFFFF" href="http://127.0.0.1:8000/">Выход</a>
                    </nav>
                </div>
            </header>

            <div>
                <button type="submit" class="back">
                    <a href="http://127.0.0.1:8000/admin"> 🠔 </a>
                </button>
                <p class="text2">РЕДАКТИРОВАНИЕ ПОЛЬЗОВАТЕЛЕЙ</p>
            </div>
            
        <div class="container-full" style="margin-top: 100px">
            <div class="row">
                <div class="col-xs-8">
                    <form class="form-inline">
                        <div class="form-group">
                            <input id="txtName" type="text" placeholder="Name" class="form-control" />
                            <input id="txtEmail" type="text" placeholder="Email" class="form-control" />
                            <input id="txtPassword" type="text" placeholder="Password" class="form-control" />
                            <input id="txtRole" type="text" placeholder="Role" class="form-control" />
                        </div>
                        <button id="btnSearch" type="button" class="btn btn-default">Найти</button>
                        <button id="btnClear" type="button" class="btn btn-default">Очистить</button>
                    </form>
                </div>
                <div class="col-xs-4" >
                    <button id="btnAdd" type="button" class="btn btn-default pull-right">Добавить</button>
                </div>
            </div>
            <div class="row" style="margin-top: 10px">
                <div class="col-xs-12">
                    <table id="grid" style="margin-top: 10px"></table>
                </div>
            </div>
        </div>
        <div class="dial" id="dialogCreate" style="display: none">
            <form>

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="nameC">
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="emailC" />
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" id="passwordC" />
                </div>

                <div class="form-group">
                    <label for="role_id">Role ID</label>
                    <input type="text" class="form-control" id="role_idC" />
                </div>

                <button type="button" id="btnCreateUser" class="btn btn-default">Create</button>
                <button type="button" id="btnCreateCancel" class="btn btn-default">Cancel</button>

            </form>
        </div>
        <div id="dialog" style="display: none">
            <input type="hidden" id="id" />
            <form>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" />
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" class="form-control" id="password" />
                </div>
                <div class="form-group">
                    <label for="role_id">Role ID</label>
                    <input type="text" class="form-control" id="role_id" />
                </div>
                <button type="button" id="btnSave" class="btn btn-default">Save</button>
                <button type="button" id="btnCancel" class="btn btn-default">Cancel</button>
            </form>
        </div>

        </div>
        
        <div class="footer">
            <footer>
                © AVTOBOTS PRODUCTION 2022
            </footer>
        </div>

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
                grid = $('#grid').grid({
                    primaryKey: 'id',
                    dataSource: '/users/index',
                    uiLibrary: 'bootstrap',
                    columns: [
                        { field: 'id', title: 'ID', width: 32 },
                        { field: 'name', title: 'Имя', sortable: true },
                        { field: 'email', title: 'Почта', sortable: true },
                        { field: 'password', title: 'Пароль', sortable: true },
                        { field: 'role_id', title: 'Роль', sortable: true },
                        { title: '', field: 'Edit', width: 34, type: 'icon', icon: 'glyphicon-pencil', tooltip: 'Edit', events: { 'click': Edit } },
                        { title: '', field: 'Delete', width: 34, type: 'icon', icon: 'glyphicon-remove', tooltip: 'Delete', events: { 'click': Delete } }
                    ],
                    pager: { limit: 5, sizes: [2, 5, 10, 20] }
                });
                dialog = $('#dialog').dialog({
                    uiLibrary: 'bootstrap',
                    autoOpen: false,
                    resizable: false,
                    modal: true
                });
                dialogCreate = $('#dialogCreate').dialog({
                    uiLibrary: 'bootstrap',
                    autoOpen: false,
                    resizable: false,
                    modal: true
                });
                $('#btnAdd').on('click', function () {
                    $('#nameC').val('');
                    $('#emailC').val('');
                    $('#passwordC').val('');
                    $('#role_idC').val('');
                    dialogCreate.open('Add user');
                });
                $('#btnSave').on('click', Save);
                $('#btnCancel').on('click', function () {
                    dialog.close();
                });
                $('#btnCreateUser').on('click', Create);
                $('#btnCreateCancel').on('click', function(){
                    dialogCreate.close();
                });
                $('#btnSearch').on('click', function () {
                    grid.reload({ name: $('#txtName').val(), email: $('#email').val(), role_id: $('#role_id').val() });
                });
                $('#btnClear').on('click', function () {
                    $('#id').val('');
                    $('#name').val('');
                    $('#email').val('');
                    $('#password').val('');
                    $('#role_id').val('');
                    grid.reload({ name: '', email: '', password: '', role_id: '' });
                });
            });
        </script>
    </body>
</html>