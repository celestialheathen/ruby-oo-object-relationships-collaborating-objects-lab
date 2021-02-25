class Song 
    @@all 
    attr_accessor :name, :artist

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.new_by_filename
    end 

end 

  
#     describe '.new_by_filename' do
#       it 'creates a new instance of a song from the file that\'s passed' do
#         file_name = 'Michael Jackson - Black or White - pop.mp3'
#         new_instance = Song.new_by_filename(file_name)
#         expect(new_instance.name).to eq('Black or White')
#       end
  
#       it 'associates new song instance with the artist from the filename' do
#         Artist.class_variable_set("@@all",[])
#         file_name = 'Michael Jackson - Black or White - pop.mp3'
  
#         new_instance = Song.new_by_filename(file_name)
#         expect(new_instance.artist.name).to eq('Michael Jackson')
#         expect(Artist.all.size).to eq(1)
#         expect(Artist.all.first.songs.empty?).to eq(false)
#       end
#     end
  
#     describe '#artist_name=' do
#       it "accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute" do
#         Artist.class_variable_set("@@all",[])
  
#         song = Song.new('Man in the Mirror')
#         song.artist_name = "Michael Jackson"
#         expect(song.artist).to be_an(Artist)
#         expect(song.artist.name).to eq("Michael Jackson")
  
#         song_2 = Song.new('Thriller')
#         song_2.artist_name = "Michael Jackson"
#         expect(song_2.artist).to be_an(Artist)
#         expect(song_2.artist.name).to eq("Michael Jackson")
  
#         expect(Artist.all.length).to eq(1)
#       end
#     end
#   end
  