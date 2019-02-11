require 'rails_helper'

RSpec.describe Base::Uri, type: :model do
  subject { described_class.new(url: "example.com/something") }

  it "initializes with valid attributes" do
    expect(subject.find_id).to eql("d8585c659f691f34f5721ef1b3c23d96")
    expect(subject.clean_url.to_s).to eql('http://example.com/something')
    expect(subject.host).to eql('example.com')
    expect(subject.name).to eql('example_com')
  end

  it "it persists with proper values" do
    subject.save
    expect(subject.id).to eql("d8585c659f691f34f5721ef1b3c23d96")
    expect(subject.url).to eql('http://example.com/something')
  end
end
