class Artist 
    @@all = []
    attr_accessor :name

    def initialize(name) 
        @name = name 
        self.class.all << self
    end 

    def self.all 
        @@all 
    end 

    def songs 
        Song.all.select { |song|
            song.artist == self
        }
    end 

    def add_song(songOjb)
        self.songs << songOjb
    end 


end 

fayewong = Artist.new("Faye Wong")
jackiecheung = Artist.new("Jackie Cheung")

puts (Artist.all.class)

  
  
  
#     describe '#add_song' do
#       it 'keeps track of an artist\'s songs' do
#         artist = Artist.new('Michael Jackson')
#         song_one = Song.new("Rock With You")
#         song_two = Song.new("Smooth Criminal")
#         smells_like_teen_spirit = Song.new("Smells Like Teen Spirit")
#         artist.add_song(song_one)
#         artist.add_song(song_two)
#         expect(artist.songs).to eq([song_one, song_two])
#       end
#     end
  
  
  
#     describe '.find_or_create_by_name' do
#       it 'always returns an Artist instance' do
#         artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#         artist_2 = Artist.find_or_create_by_name("Michael Jackson")
#         expect(artist_1).to be_an(Artist)
#         expect(artist_2).to be_an(Artist)
#       end
  
#       it 'finds or creates an artist by name maintaining uniqueness of objects by name property' do
#         artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#         artist_2 = Artist.find_or_create_by_name("Michael Jackson")
#         expect(artist_1).to eq(artist_2)
#       end
  
#       it 'Creates new instance of Artist if none exist' do
#         artist_1 = Artist.find_or_create_by_name("Drake")
#         expect(artist_1.class).to eq(Artist)
#       end
#     end
  
#     describe '#print_songs' do
#       it 'lists all of the artist\'s songs' do
#         artist = Artist.new('Michael Jackson')
#         dirty_diana = Song.new("Dirty Diana")
#         billie_jean = Song.new("Billie Jean")
#         piano_man = Song.new("Piano Man")
#         artist.add_song(dirty_diana)
#         artist.add_song(billie_jean)
#         expect{artist.print_songs}.to output("Dirty Diana\nBillie Jean\n").to_stdout
#       end
#     end
#   end