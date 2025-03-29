module Foobara
  module Generators
    module AutocrudGenerator
      module Generators
        # Kind of tricky... for the first time we will be loading an existing file in the working directory
        # and modifying it.
        class GemfileGenerator < AutocrudGenerator
          def applicable?
            gemfile_contents !~ /^\s*gem\s*["']foobara-autocrud\b/
          end

          def template_path
            "Gemfile"
          end

          def target_path
            template_path
          end

          def generate(_elements_to_generate)
            match = gemfile_contents.match(/^gem /)

            if match
              # TODO: put this in gemspec instead!
              new_entry = 'gem "foobara-autocrud"'
              "#{match.pre_match}\n#{new_entry}\n#{match}#{match.post_match}"
            else
              # TODO: maybe print a warning and return the original Gemfile
              # :nocov:
              raise "Not sure how to inject autocrud into the Gemfile"
              # :nocov:
            end
          end

          def gemfile_contents
            File.read(template_path)
          end
        end
      end
    end
  end
end
