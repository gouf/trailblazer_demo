describe BlogPost::Create do
  it 'operation test' do
    # it always returns Trailblazer::Operation::Result object
    result = BlogPost::Create.({happy: false}) # receiving data from out side
    # =>
    # Hello, Trailblazer!
    # How are you?

    expect(result.failure?).to be_truthy # => OK

    expect(result['joke']).to eq 'Broken pencils are pointless.' # => OK
  end
end
