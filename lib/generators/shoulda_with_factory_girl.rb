require 'rails/generators/named_base'

module ShouldaWithFactoryGirl
  module Generators
    class Base < Rails::Generators::NamedBase #:nodoc:
      def self.source_root
        @_shoulda_with_factory_girl_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'shoulda_with_factory_girl', generator_name, 'templates'))
      end
    end
  end
end
