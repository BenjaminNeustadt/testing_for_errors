=begin
MY ORIGINAL ATTEMPT
require 'present'

RSpec.describe Present do
  context "it fails when @contents is nil in unwrap" do
    it "fails" do
      present = Present.new
      expect{ present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end

  context "it returns contents if contents is not nil in wrap" do
    it "returns contents" do
      present = Present.new
      expect{ present.wrap("book") }.to raise_error "A contents has already been wrapped"
    end
  end

end
=end 

require 'present'

RSpec.describe Present do 
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap). to eq 6
  end

  it "fails if we unwrap without wrapping first" do
    present = Present.new
    expect { present.unwrap }
  end
end

# this is the solution by coach Kay