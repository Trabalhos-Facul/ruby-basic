require_relative 'movie'

describe Movie do

  before do
    @initial_rank = 10
    @movie = Movie.new("goonies", @initial_rank)
  end

  it "has a capitalized title" do
    @movie.title.should == 'Goonies'
  end

  it "has a initial rank" do
    @movie.rank.should == 10
  end

  it "has a string representation" do
    @movie.to_s.should == "Goonies has a rank of 10(Hit)"
  end

  it "increased rank by 1" do
    @movie.thumbs_up!

    @movie.rank.should == @initial_rank + 1
  end

  it "decreased rank by 1" do
    @movie.thumbs_down!

    @movie.rank.should == @initial_rank - 1
  end

  context "created with a default rank" do
    before do
      @movie = Movie.new("goonies")
    end

    it "has a zero rank" do
      @movie.rank.should == 0
    end
  end

  context "movie with a rank of at least 10" do
    before do
      @movie = Movie.new("goonies", 10)
    end

    it "is a hit" do
      expect(@movie.hit?).to eq(true)
    end

    it "has a hit status" do
      expect(@movie.status).to eq("Hit")
    end
  end

  context "movie with a rank less than 10" do
    before do
      @movie = Movie.new("goonies", 8)
    end

    it "is not a hit" do
      expect(@movie.hit?).to eq(false)
    end

    it "has a flop status" do
      expect(@movie.status).to eq("Flop")
    end
  end
end