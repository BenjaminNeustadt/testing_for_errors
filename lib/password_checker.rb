class PasswordChecker
  def check(password)
    if password.length >= 8
      return "true"
    else
      return "Invalid password, must be 8+ characters."
    end
  end
end
