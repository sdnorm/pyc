# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  date_of_terms_of_service :datetime
#  email                    :string           default(""), not null
#  encrypted_password       :string           default(""), not null
#  first_name               :string           not null
#  last_name                :string           not null
#  remember_created_at      :datetime
#  reset_password_sent_at   :datetime
#  reset_password_token     :string
#  terms_of_service         :boolean
#  time_zone                :string           default("UTC")
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_matches, class_name: 'Match', foreign_key: 'sender_id'
  has_many :received_matches, class_name: 'Match', foreign_key: 'recipient_id'

  validates :time_zone, presence: true
  validates :terms_of_service, acceptance: true

  after_save :update_date_of_terms_of_service

  def update_date_of_terms_of_service
    self.update(date_of_terms_of_service: Time.now) if self.terms_of_service_previously_changed?
  end
end
