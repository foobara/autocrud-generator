RSpec.describe Foobara::Generators::AutocrudGenerator::GenerateAutocrud do
  let(:inputs) do
    {}
  end
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }

  it "generates a autocrud" do
    expect(outcome).to be_success

    expect(result.keys).to include("boot/autocrud.rb")
  end
end
