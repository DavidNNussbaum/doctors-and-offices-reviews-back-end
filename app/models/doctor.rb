class Doctor < ApplicationRecord
    has_many :reviews
    scope :order_by_last_name, -> {order(:last_name)}
end
