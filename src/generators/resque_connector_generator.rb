module Foobara
  module Generators
    module ShCliConnectorGenerator
      module Generators
        class ShCliConnectorGenerator < Foobara::FilesGenerator
          class << self
            def manifest_to_generator_classes(manifest)
              case manifest
              when ShCliConnectorConfig
                [
                  Generators::BinExecutableGenerator,
                  Generators::GemfileGenerator,
                  Generators::GemspecGenerator
                ]
              else
                # :nocov:
                raise "Not sure how build a generator for a #{manifest}"
                # :nocov:
              end
            end
          end

          alias resque_connector_config relevant_manifest

          def templates_dir
            "#{__dir__}/../../templates"
          end

          # TODO: promote this up to base project
          def ==(other)
            # :nocov:
            self.class == other.class && resque_connector_config == other.resque_connector_config
            # :nocov:
          end

          def hash
            resque_connector_config.hash
          end
        end
      end
    end
  end
end
