require 'trailblazer/operation'

module BlogPost
  class Create < Trailblazer::Operation
    # Step has a flow that executes up to down
    step :hello_world!
    step :how_are_you?

    def hello_world!(options, *)
      puts 'Hello, Trailblazer!'
      true
    end

    def how_are_you?(options, *)
      puts 'How are you?'
      true
    end
  end
end
