class AddToWikiList < ActionModule
  def execute
    already_in = `bin/is #{ARGV[0]}`.chomp == 'Yes'
    if already_in
      puts "#{ARGV[0]} is already in the wiki list"
    else
      open('wikis.txt', 'a') { |f| f << ARGV[0] }
      check_again = `bin/is #{ARGV[0]}`.chomp == 'No'
      puts 'Something went wrong when appending the wiki to the list. Check wikis.txt' if check_again
    end
  end
end
