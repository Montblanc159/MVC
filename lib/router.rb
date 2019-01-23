# frozen_string_literal: true

require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux voir tous les gossips"
      puts "3. Je veux supprimer un potin"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un gossip\n\n"
        @controller.create_gossip
      when 2
        puts "Tu veux voir tous les potins\n\n"
        @controller.index_gossips
      when 3
        puts "Tu veux supprimer des potins\n\n"
        @controller.delete_gossips
      when 4
        puts "À bientôt !"
        break
      else
        puts "Ce choix n'existe pas, merci de ressayer\n\n"
      end
    end
  end

end
