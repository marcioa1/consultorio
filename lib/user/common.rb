module User
  module Common
    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods
      def method_missing(method_id, *args, &block)
        if (method_name = method_id.to_s).match(/\?$/)
          begin
            const = method_name.sub('?', '').camelize.constantize
            return self.is_a?(const) if const.include? User::Common
          rescue NameError
          end
        end

        super
      end
    end
  end
end