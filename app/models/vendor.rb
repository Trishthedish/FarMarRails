class Vendor < ActiveRecord::Base

  has_many :sales

	belongs_to :market

end
