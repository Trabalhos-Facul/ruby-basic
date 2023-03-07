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
    @movie.to_s == "Goonies has a rank of 10."
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
end