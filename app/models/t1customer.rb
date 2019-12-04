class T1customer < ApplicationRecord
  belongs_to :address
  belongs_to :packer
  belongs_to :recipient
end
