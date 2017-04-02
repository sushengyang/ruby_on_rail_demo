class Loan < ApplicationRecord
	has_many :related_date
	has_many :borrower
	#accepts_nested_attributes_for  :related_date
	#accepts_nested_attributes_for  :borrower
	validates :Assistant, presence: { message: "must be given please" }, length: {maximum: 30}, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
	validates :Manager, presence: { message: "must be given please" }, length: {maximum: 30}, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
	validates :Processor, presence: { message: "must be given please" }, length: {maximum: 30}, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
	validates :Escrow, presence: { message: "must be given please" }
	validates :Creator, presence: { message: "must be given please" }, format:{:with => /\A[^0-9`!@#\$%\^&*+_=]+\z/}
	validates_associated :borrower


	
end

