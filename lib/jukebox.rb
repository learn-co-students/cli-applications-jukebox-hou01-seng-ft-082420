# Add your code here
require 'pry'
def say_hello(name)
  "Hi #{name}"
end 

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song,index|
    song_num = (index + 1).to_s
    puts song_num + ". " + song
  end 
end 

def find_song(choice,songs)
  songs.each_with_index do |song,index|
    if index == (choice.to_i - 1)
      return song 
    elsif song == choice 
      return song 
    end 
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip 
  if choice.to_i.between?(1,9) or choice == find_song(choice,songs)
    selected = find_song(choice,songs)
    puts "Playing #{selected}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  while true 
    puts "Please enter a command:"
    command = gets.strip
    action = case command 
      when 'help'
        help
      when 'list'
        list(songs)
      when 'play'
        play(songs)
      when 'exit'
        exit_jukebox
        break
      end 
    end 
  end 
    
  
    
    
    
    
    