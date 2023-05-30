var tableHdr = null;
let IdRecord = 0;

let isCreate = true;

$(document).ready(function () {
    console.log("Before");
    loadData();
    

    $('#btnnuevo').on('click', function (e) {
        e.preventDefault();
        IdRecord = 0;
        NewRecord();
    });

    $('#btnguardar').on('click', function (e) {
        e.preventDefault();
        if (isCreate) {
            Guardar();
        }
        else {
            Editar();
        }
    });

    $('#dt-facultad').on('click', '.btn-edit' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        loadDtl(data);
        IdRecord = data.IdFacultad;
    });

    $('#dt-facultad').on('click', '.btn-delete' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        Delete(data);
        IdRecord = data.IdFacultad;
    });

    

});

function loadData() {
    tableHdr = $('#dt-facultad').DataTable({
        responsive: true,
        destroy: true,
        ajax: "/Facultad/Lista",
        order: [],
        columns: [
            { "data": "IdFacultad" },
            { "data": "Nombre" },
            { "data": "Estado" }
        ],
        processing: true,
        language: {
            "decimal": "",
            "emptyTable": "No hay información",
            "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
            "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
            "infoFiltered": "(Filtrado de _MAX_ total entradas)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Mostrar _MENU_ Entradas",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "zeroRecords": "Sin resultados encontrados",
            "paginate": {
                "first": "Primero",
                "last": "Ultimo",
                "next": "Siguiente",
                "previous": "Anterior"
            }
        },
        columnDefs: [
            {
                width: "10%",
                targets: 0,
                data: "IdFacultad"
            },
            {
                width: "60%",
                targets: 1,
                data: "Nombre"
            },
            {
                width: "29%",
                targets: 2,
                data: "Estado",
                render: function (data, type, row) {
                    if (data) {
                        return '<input type="checkbox" class="editor-active" onclick="return false;" checked>';
                    } else {
                        return '<input type="checkbox" onclick="return false;" class="editor-active">';
                    }
                    return data;
                },
                className: "dt-body-center text-center"
            },
            {
                width: "1%",
                targets: 3,
                data: null,
                defaultContent: '<button type="button" class="btn btn-info btn-sm btn-edit" data-target="#modal-record"><i class="fa fa-pencil"></i></button>'
                    + '<button type="button" class="btn btn-danger btn-sm btn-delete" data-target="#modal-record"><i class="fa fa-trash"></i></button>'
            }
        ]
    });
    console.log("After");
}

function NewRecord() {
    isCreate = true;
    $(".modal-header h3").text("Nueva Facultad");

    $('#txtNombre').val('');
    $('#txtIdFacultad').val('').hide();
    $('#txtNombreFacultad').val('').hide();
    $('#txtEstadoFacultad').val('').hide();
    $('#labelId').hide();
    $('#labelEstado').hide();

    $('#modal-record').modal('toggle');
}

function loadDtl(data) {
    isCreate = false;
    $(".modal-header h3").text("Editar Facultad");

    $('#txtIdFacultad').val(data.IdFacultad).show();
    $('#txtNombre').val(data.Nombre).show();
    $("#txtEstadoFacultad").prop("checked", data.Estado).show();
    $('#labelId').show();
    $('#labelEstado').show();

    $('#modal-record').modal('toggle');
}


function Delete(data) {
    var record = {
        id: $.trim(data.IdFacultad),
    }

    var params = new URLSearchParams(record);

        
    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Facultad/Delete' + '/?' + params.toString(),
        success: function (response) {
            console.log(response);
            if (response.success) {
                $("#modal-record").modal('hide');
                $('#dt-records').DataTable().ajax.reload(null, false);
                console.log("success");
                loadData();
            }
            else {
                $("#modal-record").modal('hide');
                console.log("failed")
            }
        }
    });
}

function Guardar() {
    var record = "";
    //record += "'IdFacultad':'" + $.trim($('#txtIdFacultad').val()) + "'";
    record += "'Nombre':'" + $.trim($('#txtNombre').val()) + "'";
    //record += ",'Estado':" + $.trim($('#txtEstadoFacultad').val()) + "'";
    console.log(record)

    $.ajax({
        type: 'POST',
        url: '/Facultad/Guardar',
        data: eval('({' + record + '})'),
        success: function (response) {
            console.log(response);
            if (response.success) {
                $("#modal-record").modal('hide');
                $('#dt-records').DataTable().ajax.reload(null, false);
                console.log("success");
                loadData();
            }
            else {
                $("#modal-record").modal('hide');
                console.log("failed")
            }
        }
    });
}


function Editar() {
    var record = {
        id: $.trim($('#txtIdFacultad').val()),
        nombre: $.trim($('#txtNombre').val()),
        estado: $.trim($('#txtEstadoFacultad')[0].checked),

    }

    var params = new URLSearchParams(record);


    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Facultad/Actualizar' + '/?' + params.toString(),
        success: function (response) {
            console.log(response);
            if (response.success) {
                $("#modal-record").modal('hide');
                $('#dt-records').DataTable().ajax.reload(null, false);
                console.log("success");
                loadData();
            }
            else {
                $("#modal-record").modal('hide');
                console.log("failed")
            }
        }
    });
}

