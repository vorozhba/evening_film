class Film
  attr_reader :title, :director, :year

  def initialize(file)
    if File.exist?(file)
      f = File.new(file,'r:UTF-8')
      content = f.readlines
      f.close
    else
      puts "файл не найден"
    end
    @title = content[0].chomp
    @director = content[1].chomp
    @year = content[2].chomp
  end

  def full_info
    director + ' - ' + title + ' (' + year + ')'
  end
end
