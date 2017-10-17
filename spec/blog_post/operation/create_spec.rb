describe BlogPost::Create do
  it 'operation test' do
    # it always returns Trailblazer::Operation::Result object
    result = BlogPost::Create.() # same as .call()

    # executed step is only hello_world! method.
    # subsequent steps not be executed.
    expect(result.failure?).to be_truthy # => OK
  end
end
