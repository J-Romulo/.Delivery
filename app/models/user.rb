class User < ApplicationRecord

  validates :name, presence: true, length: {minimum: 4, maximum: 100}

  validates_date :birth, :before => lambda{Date.current}, presence:true

  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {maximum: 150}, format: { with: VALID_EMAIL_FORMAT}

  VALID_CPF_FORMAT = /[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}/
  validates :cpf, presence:true, length: {maximum: 14}, format: {with: VALID_CPF_FORMAT}

  VALID_RG_FORMAT = /[0-9]/
  validates :rg, presence: true, length: {maximum: 14}, format: {with: VALID_RG_FORMAT}

  validates :street, presence: true, length: {minimum: 4, maximum: 100}

  validates :number, presence: true, length: {minimum: 1, maximum: 10}

  validates :tipo, presence: true
end
