class Borrower < ApplicationRecord
	validates :Name, presence: true, length: {maximum: 30}
	validates :Mailing_Address, presence: true, presence: true
	validates :Email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true
	validates :Phone, numericality: true, uniqueness: true, presence: true
	validates :Driver_License, numericality: true, uniqueness: true
	validates :SSN, numericality: true, uniqueness: true
	validates :Credit_score, numericality: true
end
