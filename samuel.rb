class Samuel

  def self.text
    "I've only got one eye\n\n"
  end

  def self.set_number(num)
    [1, num.to_i, 1000].sort[1]
  end

  def self.call(num=1)
    text * set_number(num)
  end

end
