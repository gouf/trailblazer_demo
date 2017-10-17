describe BlogPost::Create do
  it 'operation test' do
    # it always returns Trailblazer::Operation::Result object
    result = BlogPost::Create.() # same as .call()

    expect(result.success?).to be_truthy # => OK
  end
end
