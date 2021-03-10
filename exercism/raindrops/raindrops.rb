class Raindrops
  def self.convert(number)
    sounds = { 3 => 'Pling',
               5 => 'Plang',
               7 => 'Plong' }
    rain_string = ''

    sounds.each do |value, sound|
      rain_string << sound if number % value == 0
    end

    rain_string = number.to_s if rain_string.empty?
    rain_string
  end
end
