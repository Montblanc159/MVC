class View

  def create_gossip
    puts "\nQui est la personne potinière ?"
    print "> "
    @author = gets.chomp
    puts "\nEt le potin c'est quoi ?"
    print "> "
    @content = gets.chomp
    params = {author: @author, content: @content}
  end

  def index_gossips(index)
    index.each_with_index do |gossip,i|
      puts i
      puts "Auteur : #{gossip.author}"
      puts "Potin : #{gossip.content}\n\n"
    end
  end

  def delete_gossips(params)
    params.each_with_index do |param, index|
      puts index
      puts "Auteur : #{param.author}"
      puts "Potin : #{param.content}\n"
    end
    puts "\nEntre l'index du potin que tu veux supprimer :"
    print "> "
    output = gets.chomp.to_i
    if output > params.length
      puts "\nIl n'y a pas de potin à cet index"
    else
      return output
    end
  end
end
