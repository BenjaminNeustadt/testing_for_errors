require 'password_checker'

RSpec.describe PasswordChecker do 
  it "returns true for password length >= 8" do
    pass = PasswordChecker.new
    result = pass.check("12345678")
    expect(result).to eq true
  end
  it "returns error when password < 8" do
    pass = PasswordChecker.new
    expect{ pass.check("abc") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
