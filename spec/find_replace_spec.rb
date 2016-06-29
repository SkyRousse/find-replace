require ('rspec')
require ('find_replace.rb')

describe('String#find_replace') do

  it("returns a relacement letter for an input letter") do
    expect("cab".find_replace("a", "b")).to(eq("cbb"))
  end

end
# behavior input output
# returns a replacement word that replaces the original word
# returns a sentence with one word replaced
# returns a sentence with every instance of a word replaced
