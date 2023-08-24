class User < ApplicationRecord
  has_many :poissons, dependent: :destroy
  has_many :locations, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
