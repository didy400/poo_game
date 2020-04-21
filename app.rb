require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Guenièvre à la blanche fesse")
player2 = Player.new("Dame Mevanwi dit la truie")

binding.pry 