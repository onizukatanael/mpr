
require 'bundler'
Bundler.require

require 'pry'   
require 'colorize'
require 'colorized_string'

require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/board'
require_relative './lib/boardcase'
require_relative './lib/show'
require_relative './lib/application'

Application.new()
