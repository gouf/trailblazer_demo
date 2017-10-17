describe BlogPost::Create do
  it 'operation test' do
    # it always returns Trailblazer::Operation::Result object
    result = BlogPost::Create.({happy: 'yes'}) # receiving data from out side
    # =>
    # Hello, Trailblazer!
    # How are you?
    # Good to hear, have a nice day!

    expect(result.success?).to be_truthy # => OK
  end

  it 'operation test2 (failure ver.)' do
    result = BlogPost::Create.({happy: 'no'})
    # =>
    # Hello, Trailblazer!
    # How are you?

    expect(result.failure?).to be_truthy
  end
end
