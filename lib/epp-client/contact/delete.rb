require File.expand_path('../command', __FILE__)

module EPP
  module Contact
    class Delete < Command
      def initialize(id)
        @id = id
      end

      def name
        'delete'
      end

      def to_xml
        node = super
        node << contact_node('id', @id)
        node
      end
    end
  end
end
