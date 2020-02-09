
def help
  $stdout.puts(/I accept the following commands:/)
  $stdout.puts(/- help : displays this help message/)
  $stdout.puts(/- list : displays a list of songs you can play/)
  $stdout.puts(/- play : lets you choose a song to play/)
  $stdout.puts(/- exit : exits this program/)
end

def list(songs)
  songs.each_with_index do |item, index|
    $stdout.puts("#{index + 1}. #{item}")
  end
end

def play(songs)
  $stdout.puts(/Please enter a song name or number:/)
  user_input = gets
  result = false
  songs.each_with_index do |item, index|
    if item == user_input
      result = true
      $stdout.puts("/Playing #{item}/")
    end
    if (index + 1).to_s == user_input
      result = true
      $stdout.puts("/Playing #{item}/")
    end
  end
  if result == false
    $stdout.puts(/Invalid input, please try again/)
  end
end

def exit_jukebox
  $stdout.puts('Goodbye')
end

def run(songs)
  $stdout.puts(/Please enter a command:/)
  user_input = gets
  if user_input == 'exit'
    exit_jukebox
  end
  if user_input == 'help'
    help
  end
  if user_input == 'play'
    play(songs)
  end
  if user_input == 'list'
    list(songs)
  end
end