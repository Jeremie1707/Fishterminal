class T1customer < ApplicationRecord
  belongs_to :packer_id
  belongs_to :recipient_id
end
