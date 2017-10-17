require 'trailblazer/operation'

module BlogPost
  class Create < Trailblazer::Operation
    # success method ignores return value
    success :hello_world!
    step :how_are_you?
    success :enjoy_your_day!

    def hello_world!(options, *)
      puts 'Hello, Trailblazer!'
    end

    def how_are_you?(options, params:, **)
      puts 'How are you?'

      params[:happy].eql?('yes')
    end

    def enjoy_your_day!(options, *)
      puts 'Good to hear, have a nice day!'
    end
  end
end
