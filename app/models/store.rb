class Store < ActiveRecord::Base
  has_many :collections
  validates :name, presence: true, length: { maximum: 200 }, uniqueness: true
  VALID_PHONE_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/
  validates :phone, presence: true, format: {with: VALID_PHONE_REGEX}
  validates :address1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  VALID_ZIP_REGEX = /\A\d{5}(?:[-\s]\d{4})?\z/
  validates :zip, presence: true, format: {with: VALID_ZIP_REGEX}
end
