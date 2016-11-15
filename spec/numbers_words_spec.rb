require('rspec')
require('numbers_words')
require('pry')

describe('numbers_words') do
  it("returns the written form of a number") do
    expect(1.to_words()).to(eq("one"))
  end
  it("returns the written form of numbers in the teens") do
    expect(12.to_words()).to(eq("twelve"))
  end
  it("returns the written form of numbers in the tens") do
    expect(40.to_words()).to(eq("forty"))
  end
  it("returns the written form of numbers not divisible by 10") do
    expect(45.to_words()).to(eq("forty-five"))
  end

end
