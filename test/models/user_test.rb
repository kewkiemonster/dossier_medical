require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  @user = User.new(name: "Example User", email: "user@example.com",
                   password: "foobar", password_confirmation: "foobar")
  end

  # def setup
  #   @user = User.new(name: "Sample User", email: "user@sample.com")
  # end

#   # test for validity/ invalidity
#   test "should be valid" do
#     assert @user.valid?
#   end
#
#   test "email validation should accept valid addresses" do
#     valid_addresses = %w[user@sample.com USER@foo.COM A_US-ER@foo.bar.org
#                          first.middle@foo.jp simon+martina@baz.cn]
#
#     valid_addresses.each do |valid_address|
#       @user.email = valid_address
#       assert @user.valid?, "#{valid_address.inspect} should be valid"
#   end
#
# # test for email uniqueness, so it can be used as a username
#     test "email addresses should be unique" do
#       duplicate_user = @user.dup
#       duplicate_user.email = @user.email.upcase
#       @user.save
#       assert_not duplicate_user.valid?
#     end
#
#     test "email addresses should be saved as lower-case" do
#       mixed_case_email = "Foo@ExAMPle.CoM"
#         @user.email = mixed_case_email
#         @user.save
#     assert_equal mixed_case_email.downcase, @user.reload.email
#     end

    # test "associated patientrecord should be destroyed" do
    #     @user.save
    #     @user.patientrecords.create!(name: "Sample Patient", address: "123 Street", birthdate: "", contact: "09195391630", injury: "broken wrist",
    #                                                                           infection: " ", specialobservation: " ", appointment: " ", time: " ")
    #     assert_difference 'Patientrecord.count', -1 do
    #     @user.destroy
    #   end
    # end
end
