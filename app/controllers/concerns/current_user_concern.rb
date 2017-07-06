module CurrentUserConcern
  extend ActiveSupport::Concern

 def current_user
    super || guest_user
  end
  
  def guest_user
    OpenStruct.new(name: "LUCKY BOI", 
                   first_name: "LUCKY", 
                   last_name: "BOI", 
                   email: "IMALUCKYDOOD@gamblers.broke"
                   )
  end
end
