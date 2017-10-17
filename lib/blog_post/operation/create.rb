require 'trailblazer/operation'

module BlogPost
  class Create < Trailblazer::Operation
    # Note:
    # Suffixing step methods with
    # a bang (e.g. model!) is a purely stylistic choice;
    # it has no semantic meaning.
    step :hello_world!

    def hello_world!(options, *)
      puts 'Hello, Trailblazer!'
      true
    end
  end
end
