class LoadOut < ApplicationRecord
  belongs_to :t1_customer
  belongs_to :packer
  belongs_to :type_of_service
end
