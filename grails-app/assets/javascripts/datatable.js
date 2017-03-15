/**
 * Created by felipe on 14/03/17.
 */
$(document).ready(function () {

    $('#datatable').dataTable();

    $('#datatable-keytable').DataTable({
        keys: true
    });

    $('#datatable-fixed-header').DataTable({
        fixedHeader: true
    });

    $datatable.dataTable({
        'order': [[1, 'asc']],
        'columnDefs': [
            {orderable: false, targets: [0]}
        ]
    });

    TableManageButtons.init();
});