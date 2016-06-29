require ('rspec')
require ('find_replace.rb')

describe('String#find_replace') do

  it("returns a relacement letter for an input letter") do
    expect("a".find_replace("a", "b")).to(eq("b"))
  end

  it("returns a relacement word for an input word") do
    expect("cab".find_replace("cab", "uber")).to(eq("uber"))
  end

  it("returns a relacement word for an input word within a sentence") do
    expect("my cab was late".find_replace("cab", "uber")).to(eq("my uber was late"))
  end

end
