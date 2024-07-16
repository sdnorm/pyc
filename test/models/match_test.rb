# == Schema Information
#
# Table name: matches
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  recipient_id :integer
#  sender_id    :integer
#
# Indexes
#
#  index_matches_on_recipient_id  (recipient_id)
#  index_matches_on_sender_id     (sender_id)
#
# Foreign Keys
#
#  recipient_id  (recipient_id => users.id)
#  sender_id     (sender_id => users.id)
#
require "test_helper"

class MatchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
