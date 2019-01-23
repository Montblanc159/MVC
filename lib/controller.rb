# frozen_string_literal: true

require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    index = Gossip.all
    params = @view.index_gossips(index)
  end

  def delete_gossips
    params = @view.delete_gossips(Gossip.all)
    updated_index = Gossip.delete(params)
  end
end
