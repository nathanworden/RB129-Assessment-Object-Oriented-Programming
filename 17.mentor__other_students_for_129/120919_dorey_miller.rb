class Soup

  attr_accessor :temp

  def initialize(soup, temp)
    @name = soup
    @temp = temp
  end

  def tell_diners
    "The #{self.name} soup is #{adjective}"
  end

  def change_name(n)
    self.name = n
  end

  protected

  attr_accessor :name

  def to_s
    temp
  end

  private

  def adjective
    "lumpy"
  end
end

miso_soup = Soup.new("Miso", "hot")


puts miso_soup.tell_diners

# dog1.change_name("Barny")

# puts dog1.public_disclosure