module ConfigurableWith
  def self.options(*attrs)
    config_class = Class.new do
      attr_accessor *attrs
    end

    methods_class = Module.new do
      define_method :config do
        @config ||= config_class.new
      end

      def configure
        yield config
      end
    end

    Module.new do
      singleton_class.send :define_method, :included do |target_class|
        target_class.extend methods_class
      end
    end
  end
end
