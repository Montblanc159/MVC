class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    # Création d'un fichier email.csv dans notre data base.
    csv = CSV.open("db/gossip.csv", "a")
    csv << [@author, @content]
  end

  def self.all
    all_gossips = []
    csv = CSV.read("db/gossip.csv")
    csv.each do |ligne|
      temp_gossip = Gossip.new(ligne[0], ligne[1])
      all_gossips << temp_gossip
    end
    return all_gossips
  end

end
