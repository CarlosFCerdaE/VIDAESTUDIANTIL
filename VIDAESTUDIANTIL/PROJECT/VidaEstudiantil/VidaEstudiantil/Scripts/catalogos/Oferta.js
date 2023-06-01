
var tableHdr = null;
let IdRecord = 0;

let isCreate = true;


$(document).ready(function () {
    console.log("Before");
    loadData();
    loadNivelExp();
    loadEmpresa();
    loadMoneda();
    loadTipoTrabajo();



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

    $('#dt-oferta').on('click', '.btn-edit', function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        loadDtl(data);
        IdRecord = data.IdOfertaLaboral;
    });

    $('#dt-oferta').on('click', '.btn-delete', function (e) {

        e.preventDefault();
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        Delete(data);
        IdRecord = data.IdOfertaLaboral;
    });



});

function loadNivelExp() {
    $.getJSON('/NivelExp/Lista', function (data) {
        $.each(data.data, function (key, entry) {
            $('#cmbTipoNivelExp')
                .append($('<option></option>')
                    .attr('value', entry.IdNivelExperiencia)
                    .text(entry.Nombre));
        })
    });
}
function loadEmpresa() {
    $.getJSON('/Empresa/Lista', function (data) {
        $.each(data.data, function (key, entry) {
            $('#cmbTipoEmpresa')
                .append($('<option></option>')
                    .attr('value', entry.IdEmpresa)
                    .text(entry.Nombre));
        })
    });
}


function loadMoneda() {
    var data = [{ value: "Cordobas" }, { value: "Dolares" }];
    $.each(data, function (key, entry) {
        $('#cmbTipoMoneda')
            .append($('<option></option>').attr('value', entry.value).text(entry.value));
    })
}
function loadTipoTrabajo() {
    var data = [{ value: "Pasantias" }, { value: "Plazo fijo" }];
    $.each(data, function (key, entry) {
        $('#txtTipoTrabajo')
            .append($('<option></option>').attr('value', entry.value).text(entry.value));
    })
}

function loadData() { 
    tableHdr = $('#dt-oferta').DataTable({
        responsive: true,
        destroy: true,
        ajax: "/Oferta/Lista",
        order: [],
        columns: [
            { "data": "IdOfertaLaboral" },
            { "data": "Titulo" },
            { "data": "Descripcion" },
            { "data": "nivelExperiencia" },
            { "data": "Horario" },
            { "data": "Salario" },
            { "data": "Moneda" },
            { "data": "TipoTrabajo" },
            { "data": "Cargo" },
            { "data": "AreaDeTrabajo" },
            { "data": "nombreEmpresa"},
            {
                defaultContent: '<button type="button" class="btn btn-info btn-sm btn-edit" data-target="#modal-record"><i class="fa fa-pencil"></i></button>'
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
                width: "auto",
                targets: 0,
                data: "IdOfertaLaboral"
            },
            {
                width: "auto",
                targets: 1,
                data: "Titulo"
            },
            {
                width: "auto",
                targets: 1,
                data: "Descripcion"
            }, {
                width: "auto",
                targets: 0,
                data: "nivelExperiencia"
            }, {
                width: "auto",
                targets: 1,
                data: "Horario"
            }, {
                width: "auto",
                targets: 1,
                data: "Salario"
            },
            {
                width: "auto",
                targets: 1,
                data: "Moneda"
            }, {
                width: "auto",
                targets: 1,
                data: "TipoTrabajo"
            }, {
                width: "auto",
                targets: 1,
                data: "Cargo"
            },
            {
                width: "auto",
                targets: 1,
                data: "AreaDeTrabajo"
            },
            {
                width: "auto",
                targets: 0,
                data: "nombreEmpresa"
            }
        ]
    });
    console.log("After");
}


function NewRecord() {
    isCreate = true;
    $(".modal-header h3").text("Nueva Oferta");

    $('#txtNombre').val('');
    $('#txtDescripcion').val('');
    $(' #cmbTipoNivelExp').val('');
    $('#txtHorario').val('');
    $('#txtSalario').val('');
    $('#cmbTipoMoneda').val('');
    $('#txtTipoTrabjo').val('')
    $('#txtCargo').val('');
    $('#txtAreaTrabajo').val('');
    $('#cmbTipoEmpresa').val('');
    $('#labelId').hide();
    $('#labelEstado').hide('');
    $('#txtEstadoOferta').hide('');

    $('#modal-record').modal('toggle');
}

function loadDtl(data) {
    isCreate = false;
    $(".modal-header h3").text("Editar Oferta");

    $('#txtIdOferta').val(data.IdOfertaLaboral).show();
    $('#txtNombre').val(data.Titulo).show();
    $('#txtDescripcion').val(data.Descripcion).show();
    $('#cmbTipoNivelExp').val(data.IdNivelExperiencia).show();
    $('#txtHorario').val(data.Horario).show();
    $('#txtSalario').val(data.Salario).show();
    $('#cmbTipoMoneda').val(data.Moneda).show();
    $('#txtTipoTrabajo').val(data.TipoTrabajo).show();
    $('#txtCargo').val(data.Cargo).show();
    $('#txtAreaTrabajo').val(data.AreaDeTrabajo).show();
    $('#cmbTipoEmpresa').val(data.IdEmpresa).show();
    $("#txtEstadoOferta").prop("checked", data.Estado).hide();
    $('#labelId').show();
    $('#labelEstado').show().hide();
    $('#modal-record').modal('toggle');
}


function Delete(data) {
    var record = {
        id: $.trim(data.idOferta),
    }

    var params = new URLSearchParams(record);


    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Oferta/Delete' + '/?' + params.toString(),
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
    //record += "'IdOferta':'" + $.trim($('#txtIdOferta').val()) + "'";
    record += "'Titulo':'" + $.trim($('#txtNombre').val()) + "'";
    record += ",'Descripcion':'" + $.trim($('#txtDescripcion').val()) + "'";
    record += ",'IdNivelExperiencia':'" + $.trim($('#cmbTipoNivelExp').val()) + "'";
    record += ",'Horario':'" + $.trim($('#txtHorario').val()) + "'";
    record += ",'Salario':'" + $.trim($('#txtSalario').val()) + "'";
    record += ",'Moneda':'" + $.trim($('#cmbTipoMoneda').val()) + "'";
    record += ",'TipoTrabajo':'" + $.trim($('#txtTipoTrabajo').val()) + "'";
    record += ",'Cargo':'" + $.trim($('#txtCargo').val()) + "'";
    record += ",'AreaDeTrabajo':'" + $.trim($('#txtAreaTrabajo').val()) + "'";
    record += ",'idEmpresa':'" + $.trim($('#cmbTipoEmpresa').val()) + "'";
    //record += ",'Estado':" + $.trim($('#txtEstadoOferta').val()) + "'";
    console.log(record)

    $.ajax({
        type: 'POST',
        url: '/Oferta/Guardar',
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
        idoferta: $.trim($('#txtIdOferta').val()),
        titulo: $.trim($('#txtNombre').val()),
        descripcion: $.trim($('#txtDescripcion').val()),
        idnivelexperiencia: $.trim($('#cmbTipoNivelExp').val()),
        horario: $.trim($('#txtHorario').val()),
        salario: $.trim($('#txtSalario').val()),
        moneda: $.trim($('#cmbTipoMoneda').val()),
        tipotrabajo: $.trim($('#txtTipoTrabajo').val()),
        cargo: $.trim($('#txtCargo').val()),
        areadetrabajo: $.trim($('#txtAreaTrabajo').val()),
        idempresa: $.trim($('#cmbTipoEmpresa').val()),
        //Estado: $.trim($('#txtEstadoOferta')[0].checked),
    }

    var params = new URLSearchParams(record);


    console.log(record);

    $.ajax({
        type: 'POST',
        url: '/Oferta/Actualizar' + '/?' + params.toString(),
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

