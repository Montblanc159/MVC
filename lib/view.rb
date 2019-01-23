class View

  def create_gossip
    puts "Qui est la personne potinière ?"
    print "> "
    @author = gets.chomp
    puts "Et le potin c'est quoi ?"
    print "> "
    @content = gets.chomp
    params = {author: @author, content: @content}
  end

  def index_gossips(index)
    index.each do |gossip|
      puts "Auteur : #{gossip.author}"
      puts "Potin : #{gossip.content}\n"
    end
  end
end
