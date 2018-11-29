 module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || OpenStruct.new(guest_user)
  end

  def guest_user
    OpenStruct.new(name:"Guest User",
                  first_name:"Guest",
                  last_name:"User",
                  email:"guest@nil.com")
  end
end