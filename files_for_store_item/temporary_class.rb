require "./class.rb"
require "./module.rb"

class TemporaryToothbrush < Toothbrushes
  def initialize(input_hash)
    super
    @life = input_hash [:life]
  end

  def how_long
    puts "this will last for #{@life}."
  end

  include Seasonable
end