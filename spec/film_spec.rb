require 'rspec'
require 'film.rb'

describe Film do
  it 'successful reads of file content to 3 variables' do
    film = Film.new(File.join(File.dirname(__FILE__),'/fixtures/eng.txt'))
    expect(film.title).to eq 'Film'
    expect(film.director).to eq 'Director'
    expect(film.year).to eq 'Year'
  end

  it 'successful reads file content (in russian) to 3 variables' do
    film = Film.new(File.join(File.dirname(__FILE__),'/fixtures/rus.txt'))
    expect(film.title).to eq 'Фильм'
    expect(film.director).to eq 'Режиссер'
    expect(film.year).to eq 'Год'
  end

  context '#full_info' do
    it 'returns "Director - Film (Year)"' do
      film = Film.new(File.join(File.dirname(__FILE__),'/fixtures/eng.txt'))
      expect(film.full_info).to eq 'Director - Film (Year)'
    end
  end
end
