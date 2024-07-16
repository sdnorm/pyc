class AddTermsOfServiceToUserModel < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :terms_of_service, :boolean
    add_column :users, :date_of_terms_of_service, :datetime
  end
end
