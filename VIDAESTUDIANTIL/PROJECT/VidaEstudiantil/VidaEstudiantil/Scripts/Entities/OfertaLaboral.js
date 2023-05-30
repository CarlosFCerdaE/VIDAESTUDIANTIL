var tableHdr = null;
let IdRecord = 0;

let isCreate = true;

$(document).ready(function () {
    console.log("Before");
    loadData();
    loadEmpresa();
    loadNivelExperiencia();
    

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

    $('#dt-ofertalaboral').on('click', '.btn-edit' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        loadDtl(data);
        IdRecord = data.IdFacultad;
    });

    $('#dt-ofertalaboral').on('click', '.btn-delete' , function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        Delete(data);
        IdRecord = data.IdFacultad;
    });

    

});

function loadData() {
    tableHdr = $('#dt-ofertalaboral').DataTable({
        responsive: true,
        destroy: true,
        ajax: "/OfertaLaboral/Lista",
        order: [],
        columns: [
            { "data": "IdOfertaLaboral"},
            { "data": "Titulo" },
            { "data": "Descripcion" },
            { "data": "NivelExperiencia" },
            { "data": "Horario" },
            { "data": "Salario" },
            { "data": "Moneda" },
            { "data": "TipoTrabajo" },
            { "data": "Cargo" },
            { "data": "AreaDeTrabajo" },
            { "data": "NombreEmpresa" },
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
                width: "3%",
                targets: 0,
                data: "IdOfertaLaboral"
            },
            {
                width: "10%",
                targets: 1,
                data: "Titulo"
            },
            {
                width: "14%",
                targets: 1,
                data: "Descripcion"
            },
            {
                width: "5%",
                targets: 1,
                data: "NivelExperiencia"
            },
            {
                width: "7%",
                targets: 1,
                data: "Horario"
            },
            {
                width: "7%",
                targets: 1,
                data: "Salario"
            },
            {
                width: "7%",
                targets: 1,
                data: "Moneda"
            },
            {
                width: "7%",
                targets: 1,
                data: "TipoTrabajo"
            },
            {
                width: "10%",
                targets: 1,
                data: "Cargo"
            },
            {
                width: "7%",
                targets: 1,
                data: "AreaDeTrabajo"
            },
            {
                width: "10%",
                targets: 1,
                data: "NombreEmpresa"
            },
            {
                width: "3%",
                targets: 11,
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
                targets: 12,
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
    $(".modal-header h3").text("Nueva Oferta Laboral");

    $('#txtIdOfertaLaboral').val('');
    $('#txtTitulo').val('');
    $('#txtDescripcion').val('');
    $('#cmbNivelExperiencia').val('');
    $('#txtHorario').val('');
    $('#txtSalario').val('');
    $('#txtMoneda').val('');
    $('#txtTipoTrabajo').val('');
    $('#txtCargo').val('');
    $('#txtAreaTrabajo').val('');
    $('#cmbEmpresa').val('');

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

function loadEmpresa() {
    $.getJSON('/Empresa/Lista', function (data) {
        $.each(data.data, function (key, entry) {
            $('#cmbEmpresa')
                .append($('<option></option>')
                    .attr('value', entry.IdEmpresa)
                    .text(entry.Nombre));
        })
    });
}

function loadNivelExperiencia() {
    $.getJSON('/NivelExperiencia/Lista', function (data) {
        $.each(data.data, function (key, entry) {
            $('#cmbNivelExperiencia')
                .append($('<option></option>')
                    .attr('value', entry.IdNivelExperiencia)
                    .text(entry.Nombre));
        })
    });
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
    record += "'Titulo':'" + $.trim($('#txtTitulo').val()) + "'";
    record += ",'Descripcion':'" + $.trim($('#txtDescripcion').val()) + "'";
    record += ",'IdNivelExperiencia':'" + $.trim($('#cmbNivelExperiencia').val()) + "'";
    record += ",'Horario':'" + $.trim($('#txtHorario').val()) + "'";
    record += ",'Salario':'" + $.trim($('#txtSalario').val()) + "'";
    record += ",'Moneda':'" + $.trim($('#txtMoneda').val()) + "'";
    record += ",'TipoTrabajo':'" + $.trim($('#txtTipoTrabajo').val()) + "'";
    record += ",'Cargo':'" + $.trim($('#txtCargo').val()) + "'";
    record += ",'AreaDeTrabajo':'" + $.trim($('#txtAreaTrabajo').val()) + "'";
    record += ",'IdEmpresa':'" + $.trim($('#cmbEmpresa').val()) + "'";
    //record += ",'Estado':" + $.trim($('#txtEstadoOfertaLaboral').val()) + "'";
    console.log(record)

    $.ajax({
        type: 'POST',
        url: '/OfertaLaboral/Guardar',
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
        url: '/OfertaLaboral/Actualizar' + '/?' + params.toString(),
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

