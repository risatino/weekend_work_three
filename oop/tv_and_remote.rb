# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

# class Tv
#   def initialize(power, volume, channel)
#     @power = power
#     @volume = volume
#     @channel = channel
#   end
# end

# class Remote < Tv
#   def initialize
#     @tv = Tv
#   end

#   def toggle_power
#     if @power == "on"
#       puts "off"
#     else
#       puts "on"
#     end
#   end

#   def increment_volume
#     @volume.to_i += 1
#   end

#   def set_channel
#     @channel = set_channel 
#   end
# end

# my_tv = Tv.new("on",35, 17)

# p tv.power

# another attempt
module Remote
  def toggle_power
    if @power == false
      @power = true
    else
      @power = false
    end
  end

  def increment_volume
    @volume = @volume + 1
  end

  def decrement_volume
    @volume = @volume - 1
  end

  def new_channel(channel)
    @channel = channel
  end
end

class Tv
  include Remote
  attr_accessor :power, :volume, :channel
  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end
end

my_tube = Tv.new(false, 50, 30)

p my_tube.toggle_power
p my_tube.increment_volume
p my_tube.new_channel(45)