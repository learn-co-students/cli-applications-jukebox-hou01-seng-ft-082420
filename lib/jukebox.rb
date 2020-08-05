require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(records)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i <= records.length && input.to_i > 0
    puts "Playing #{records[input.to_i-1]}"
  else
    new_song = records.find{|song| song == input}
    if new_song 
      puts "Playing #{new_song}"  
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 


def list(records)
  records.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(records)
  input = ''
  until input == "exit"
  puts "Please enter a command:"
  input = gets.strip
  case input 
  when "list"
    list(records)
  when "help"
    help 
  when "play"
    play(records)
  end #case 
  end #until 
  exit_jukebox
end

