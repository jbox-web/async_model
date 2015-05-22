module AsyncModel
  module ModelBehavior
    extend ActiveSupport::Concern

    included do
      class_attribute :aj_klass_name
    end


    module ClassMethods

      def acts_as_async_model(klass = nil)
        self.aj_klass_name = klass
      end

    end


    def get_aj_klass
      self.class.aj_klass_name || self.class.name
    end


    def get_aj_klass_name
      "#{get_aj_klass}Job"
    end


    def aj_klass
      get_aj_klass_name.constantize
    end


    def run_async!(*args)
      aj_klass.perform_later(self, *args)
    end

  end
end
