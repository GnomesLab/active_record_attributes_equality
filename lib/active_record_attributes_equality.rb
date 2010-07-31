require 'active_record' unless defined? ActiveRecord

# Module containing the attributes equality logic.
module ActiveRecordAttributesEquality

  # When included, the object including this module, will be issued a class eval in order to load the attributes
  # equallity logic.
  def self.included(klass)

    klass.class_eval do

      # Overriding ActiveRecord::Base equality method, forcing it to look at the attributes hash whenever two new
      # new records are being compared.
      #
      # If the objects being compared are not new records, like +ActiveRecord::Base#==+ the ID of both is compared.
      def ==(other)
        return false unless other.is_a? self.class

        if self.new_record? && other.new_record?
          self.attributes == other.attributes
        else
          self.id == other.id
        end
      end # ==

    end # eval

  end # included

end # ActiveRecordAttributesEquality

ActiveRecord::Base.send :include, ActiveRecordAttributesEquality
