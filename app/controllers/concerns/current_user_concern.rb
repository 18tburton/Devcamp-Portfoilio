module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end
  
  def guest_user
    guest = GuestUser.new
    guest.name = "LUCKY BOI"
    guest.first_name = "LUCKY"
    guest.last_name = "BOI"
    guest.email = "LUCKYGAMBLERS@broke.net"
    guest
  end
end
