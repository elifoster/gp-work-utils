class WikiManager
  WIKIS = File.readlines("#{__dir__}/../wikis.txt").map { |line| line.chomp }

  def self.open(page = '')
    to_open = []
    WIKIS.each do |wiki|
      url = "https://#{wiki}.gamepedia.com/#{page}"
      to_open << url if yield(url) || !block_given?
    end
    puts 'Finished filtering, now opening'
    slices = to_open.each_slice(10)
    num_batches = slices.size - 1
    slices.with_index do |batch, index|
      batch.each do |url|
        `open #{url}`
      end
      if index != num_batches
        puts 'Please press enter to open next set'
        # Suspend opening next set until user presses enter
        $stdin.gets unless index == num_batches
      end
    end
  end
end
