File.readlines('input.txt').each_slice(10) do |pages|
  pages.each do |page|
    page = ARGV.include?('-c') ? "Category:#{page.chomp}" : page.chomp
    `open "http://#{ARGV[0]}.wikia.com/#{page}"`
  end
  $stdin.gets
end
