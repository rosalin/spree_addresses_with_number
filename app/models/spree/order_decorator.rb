module Spree
  Order.class_eval do
  
   Spree::Order.state_machine.before_transition :to => :delivery, :do => :concat
   
   Spree::Order.state_machine.before_transition :to => :address, :do => :normalize_address 
    
    
    def concat
      self.bill_address.address1 = self.bill_address.address1 + ", " + self.bill_address.number
      #self.bill_address.address1 = self.bill_address.address1 + ", " + self.ship_address.number
    end
    
    def normalize_address
      virgula_index=nil
      virgula_index = self.bill_address.address1.index(',')  
      
      if(virgula_index != nil)
        self.bill_address.address1= self.bill_address.address1[0, virgula_index]
      end
      
    end

  end
end

