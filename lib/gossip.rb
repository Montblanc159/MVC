class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    # Création d'un fichier email.csv dans notre data base.
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
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

  def self.delete(params)
    all_gossips = Gossip.all
    all_gossips.delete_at(params)
    CSV.open("db/gossip.csv", "w") do |csv|
      all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end

end
