class LayoutCreator
  def self.layout()
    file = File.open('index.erb', 'r')
  return ERB.new(file.to_s).result
  end
end
