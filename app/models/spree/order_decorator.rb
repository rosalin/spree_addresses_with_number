module Spree
  Order.class_eval do
  
   Spree::Order.state_machine.before_transition :to => :delivery, :do => :concat
    
    
    def concat
      self.bill_address.address1 = self.bill_address.address1 + ", " + self.bill_address.number
      #self.bill_address.address1 = self.bill_address.address1 + ", " + self.ship_address.number
    end

  end
end

