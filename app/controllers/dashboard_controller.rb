class DashboardController < ApplicationController
  # def index
  #   @load_ins = LoadIn.all
  #   @load_outs = LoadOut.all
  #   @in_assignments = InAssignment.all
  #   @out_assignments = OutAssignment.all
  #   @recipients = Recipient.all
  #   @packers = Packer.all
  #   @t1_customers = T1Customer.all
  #   @recipient_adresses = RecipientAddress.all
  #   @packer_adresses = PackerAddress.all
  #   @t1_customer_adresses = T1CustomerAddress.all
  # end


  def index
    respond_to do |format|
      format.html
      format.json { render json: DashboardDatatable.new(params) }
    end
  end
end

