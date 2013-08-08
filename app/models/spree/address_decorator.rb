module Spree
  Address.class_eval do
    
    validates :number, presence: true, if: :require_number?
    
    attr_accessible :firstname, :lastname, :address1, :address2,
                    :city, :zipcode, :country_id, :state_id,
                    :country, :state, :phone, :state_name,
                    :company, :alternative_phone, :number
                    

    
    
    def require_number?
        false
    end
        
  end
end