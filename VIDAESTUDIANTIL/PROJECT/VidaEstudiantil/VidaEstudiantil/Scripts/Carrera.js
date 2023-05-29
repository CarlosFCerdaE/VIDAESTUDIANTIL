var tableHdr = null;
let IdRecord = 0;

let isCreate = true;

$(document).ready(function () {
    console.log("Before");
    loadData();
    loadFacultad();


    

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

    $('#dt-carrera').on('click', '.btn-edit' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        loadDtl(data);
        IdRecord = data.idCarrera;
    });

    $('#dt-carrera').on('click', '.btn-delete' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        Delete(data);
        IdRecord = data.IdCarrera;
    });

    

});

function loadFacultad() {
    $.getJSON('/Facultad/Lista', function (data) {
        $.each(data.data, function (key, entry) {
            $('#cmbTipo')
                .append($('<option></option>')
                    .attr('value', entry.IdFacultad)
                    .text(entry.Nombre));
        })
    });
}

function loadData() {
    tableHdr = $('#dt-carrera').DataTable({
        responsive: true,
        destroy: true,
        ajax: "/Carrera/Lista",
        order: [],
        columns: [
            { "data": "idCarrera" },
            { "data": "Nombre" },
            { "data": "Estado" },
            { "data": "nombreFacultad" },
            {defaultContent: '<button type="button" class="btn btn-info btn-sm btn-edit" data-target="#modal-record"><i class="fa fa-pencil"></i></button>'
                    + '<button type="button" class="btn btn-danger btn-sm btn-delete" data-target="#modal-record"><i class="fa fa-trash"></i></button>'
            }
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
                data: "idCarrera"
            },
            {
                width: "40%",
                targets: 1,
                data: "Nombre"
            },
            {
                width: "10%",
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
                width: "10%",
                targets: 0,
                data: "IdFacultad"
            }
            //{
            //    width: "20%",
            //    targets: 2,
            //    defaultContent: '<button type="button" class="btn btn-info btn-sm btn-edit" data-target="#modal-record"><i class="fa fa-pencil"></i></button>'
            //        + '<button type="button" class="btn btn-danger btn-sm btn-delete" data-target="#modal-record"><i class="fa fa-trash"></i></button>'
            //}
        ]
    });
    console.log("After");
}

function NewRecord() {
    isCreate = true;
    $(".modal-header h3").text("Nueva Carrera");

    $('#txtNombre').val('');
    $('#txtIdCarrera').val('').hide();
    $('#txtNombreCarrera').val('').hide();
    $('#txtEstadoCarrera').val('').hide();
    $('#cmbTipo').val('');
    $('#labelId').hide();
    $('#labelEstado').hide();
    $('#labelIdFacultad').val('');

    $('#modal-record').modal('toggle');
}

function loadDtl(data) {
    isCreate = false;
    $(".modal-header h3").text("Editar Carrera");

    $('#txtIdCarrera').val(data.idCarrera).show();
    $('#txtNombre').val(data.Nombre).show();
    $("#txtEstadoCarrera").prop("checked", data.Estado).show();
    //$('#txtIdFacultad').val(data.IdFacultad).show();
    $('#cmbTipo').val(data.IdFacultad).show();
    $('#labelId').show();
    $('#labelEstado').show();   
    $('#labelIdFacultad').show();

    $('#modal-record').modal('toggle');
}


function Delete(data) {
    var record = {
        id: $.trim(data.idCarrera),
    }

    var params = new URLSearchParams(record);


    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Carrera/Delete' + '/?' + params.toString(),
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
    //record += "'IdCarrera':'" + $.trim($('#txtIdCarrera').val()) + "'";
    record += "'Nombre':'" + $.trim($('#txtNombre').val()) + "'";
    record += ",'IdFacultad':'" + $.trim($('#cmbTipo').val()) + "'";
    //record += ",'Estado':" + $.trim($('#txtEstadoCarrera').val()) + "'";
    console.log(record)

    $.ajax({
        type: 'POST',
        url: '/Carrera/Guardar',
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
        id: $.trim($('#txtIdCarrera').val()),
        nombre: $.trim($('#txtNombre').val()),
        estado: $.trim($('#txtEstadoCarrera')[0].checked),
        idFacultad: $.trim($('#cmbTipo').val())

    }

    var params = new URLSearchParams(record);


    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Carrera/Actualizar' + '/?' + params.toString(),
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

