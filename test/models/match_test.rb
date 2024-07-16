# == Schema Information
#
# Table name: matches
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recipient_id :bigint
#  sender_id    :bigint
#
# Indexes
#
#  index_matches_on_recipient_id  (recipient_id)
#  index_matches_on_sender_id     (sender_id)
#
# Foreign Keys
#
#  fk_rails_...  (recipient_id => users.id)
#  fk_rails_...  (sender_id => users.id)
#
require "test_helper"

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
