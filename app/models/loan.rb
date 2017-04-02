class Loan < ApplicationRecord
	has_one :related_date
	validates :Assistant, length: {maximum: 30}
	validates :Manager, length: {maximum: 30}
end

