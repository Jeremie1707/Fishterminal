//  $(document).ready(function() {
//   $("#loadins").dataTable();
// });

//  $(document).ready(function() {
//   $("#loadouts").dataTable();
// });

jQuery(document).ready(function() {
  $('#dashboard-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": $('#dashboard-datatable').data('source')
    },
    "pagingType": "full_numbers",
    "columns": [
      {"data": "reference"},
      {"data": "customer_name"},
      {"data": "status"},
      {"data": "arrival_date"},
      {"data": "truck_nr"},
      {"data": "trailer_nr"}
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
});
