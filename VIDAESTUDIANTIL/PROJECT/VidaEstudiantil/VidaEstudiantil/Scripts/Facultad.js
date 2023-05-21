var tableHdr = null;
let IdRecord = 0;

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
        Guardar();
    });

    $('#dt-records').on('click', 'button.btn-edit', function (e) {
        var _this = $(this).parents('tr');
        var data = tableHdr.row(_this).data();
        loadDtl(data);
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
                data: "Estado"
            },
            {
                width: "1%",
                targets: 3,
                data: null,
                defaultContent: '<button type="button" class="btn btn-info btn-sm btn-edit" data-target="#modal-record"><i class="fa fa-pencil"></i></button>'
            }
        ]
    });
    console.log("After");
}

function NewRecord() {
    $(".modal-header h3").text("Nueva Facultad");

    $('#txtIdFacultad').val('');
    $('#txtNombreFacultad').val('');
    $('#txtEstadoFacultad').val('');

    $('#modal-record').modal('toggle');
}

function loadDtl(data) {
    $(".modal-header h3").text("Editar Facultad");

    $('#txtIdFacultad').val(data.IdFacultad);
    $('#txtCardNumber').val(data.Nombre);
    $("#txtExpMonth").val(data.Estado);

    $('#modal-record').modal('toggle');
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
            if (response.success) {
                $("#modal-record").modal('hide');
                $('#dt-records').DataTable().ajax.reload(null, false);
                console.log("success")
            }
            else {
                $("#modal-record").modal('hide');
                console.log("failed")
            }
        }
    });
}

