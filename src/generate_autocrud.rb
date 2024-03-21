require "pathname"

require_relative "autocrud_config"

module Foobara
  module Generators
    module AutocrudGenerator
      class GenerateAutocrud < Foobara::Generators::Generate
        class MissingManifestError < RuntimeError; end

        possible_error MissingManifestError

        inputs AutocrudConfig

        def execute
          include_non_templated_files

          add_initial_elements_to_generate

          each_element_to_generate do
            generate_element
          end

          paths_to_source_code
        end

        attr_accessor :manifest_data

        def base_generator
          Generators::AutocrudGenerator
        end

        # TODO: delegate this to base_generator
        def templates_dir
          # TODO: implement this?
          # :nocov:
          "#{__dir__}/../templates"
          # :nocov:
        end

        def add_initial_elements_to_generate
          elements_to_generate << autocrud_config
        end

        def autocrud_config
          @autocrud_config ||= AutocrudConfig.new(inputs)
        end
      end
    end
  end
end
