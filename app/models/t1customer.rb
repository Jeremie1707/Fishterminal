class T1customer < ApplicationRecord
  belongs_to :address_id
  belongs_to :packer_id
  belongs_to :recipient_id
end
