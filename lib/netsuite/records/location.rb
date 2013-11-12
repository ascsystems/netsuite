module NetSuite
  module Records
    class Location
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::ListAcct

      actions :get, :add, :delete, :search

      fields :location, :quantity_on_hand, :on_hand_value_mli, :average_cost_mli, :last_purchase_price_mli, :reorder_point, :preferred_stock_level, :quantity_committed, :quantity_available

      record_refs :location_id

      attr_reader   :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

      def to_record
	rec = super
        rec
      end

    end
  end
end
