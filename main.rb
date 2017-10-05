require_relative 'lib/film'

STDOUT.puts "Фильм на вечер. Версия 5. (c) Stanislav Vorozhba\n\n"
sleep 1

current_path = File.dirname(__FILE__)

file_path = current_path + '/films/'
files = Dir[file_path + '*.txt']

directors = []
full_info = []

files.each do |file|
  film = Film.new(file)
  directors << film.director
  full_info << film.full_info
end

directors.uniq!

directors.each_with_index do |director, index|
  print "#{index + 1}: #{director}\n\n"
end

user_input = 0
until user_input.between?(1,directors.size)
  STDOUT.puts "Фильм какого режиссера вы хотите сегодня посмотреть?"
  user_input = STDIN.gets.to_i
end

dir_choice = directors[user_input-1]

adv_arr = full_info.select { |info| info.include? (dir_choice)}

STDOUT.puts "\nИ сегодня вечером рекомендую посмотреть:\n\n#{adv_arr.sample}"
