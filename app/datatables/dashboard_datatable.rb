class DashboardDatatable < AjaxDatatablesRails::ActiveRecord


    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
  def view_columns
  @view_columns ||= {
    reference:      { source: "LoadIn.reference" },
    customer_name:  { source: "T1Customer.name", cond: :like, searchable: true, orderable: true },
    status:         { source: "LoadIn.status",  cond: :like },
    arrival_date: { source: "LoadIn.arrival_date" },
    truck_nr:          { source: "LoadIn.truck_nr" },
    trailer_nr:        { source: "LoadIn.trailer_nr" }
  }
  # @view_columns ||= {
  #   loadin_reference: 'LoadIn.reference',
  #   # customer_name:     'T1Customer.name',
  #   loadin_status:    'LoadIn.status',
  #   loadin_arrival_date: 'LoadIn.arrival_date',
  #   loadin_truck_nr:     'LoadIn.truck_nr',
  #   loadin_trailer_nr:    'LoadIn.trailer_nr'
  # }
  end
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }


  def data
  records.map do |record|
    {
      reference:  record.reference,
      customer_name:   record.t1_customer.name,
      status:     record.status,
      arrival_date:  record.arrival_date,
      truck_nr:        record.truck_nr,
      trailer_nr:        record.trailer_nr,
      DT_RowId:   record.id # This will automagically set the id attribute on the corresponding <tr> in the datatable
    }
    # the left column should be the same as in js
  end
end

  def get_raw_records
    # T1Customer.joins(:load_ins).where(load_ins: { t1_customer: :t1_customer })
    # LoadIn.all
   LoadIn.joins(:t1_customer).references(:t1_customer)

  end

end
