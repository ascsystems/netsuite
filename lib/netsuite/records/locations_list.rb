module NetSuite
  module Records
    class LocationsList
      include Namespaces::PlatformCore

      def initialize(attributes = {})
        case attributes[:locations]
        when Hash
          locations << Location.new(attributes[:locations])
        when Array
          attributes[:locations].each { |location| locations << Location.new(location) }
        end
      end

      def locations
        @locations ||= []
      end

      def to_record
       locations.map do |location|
          { "#{record_namespace}:location" => location.to_record }
        end
      end

    end
  end
end
