require('rspec')
require('numbers_words')
require('pry')

describe('numbers_words') do
  # singles
  it("returns the written form of a number") do
    expect(1.to_words()).to(eq("one"))
  end
  # teens
  it("returns the written form of numbers in the teens") do
    expect(12.to_words()).to(eq("twelve"))
  end
  # tens
  it("returns the written form of numbers in the tens") do
    expect(40.to_words()).to(eq("forty"))
  end
  it("returns the written form of numbers not divisible by 10") do
    expect(45.to_words()).to(eq("forty five"))
  end
  # hundreds
  it("returns the written form of numbers in the hundreds") do
    expect(100.to_words()).to(eq("one hundred"))
  end
  it("returns the written form of numbers in the hundreds not evenly divisible by 100") do
    expect(125.to_words()).to(eq("one hundred twenty five"))
    expect(120.to_words()).to(eq("one hundred twenty"))
  end
  # thousands
  it("returns the written form of numbers in the thousands not evenly divisible by 100") do
    expect(1000.to_words()).to(eq("one thousand"))
    expect(1125.to_words()).to(eq("one thousand one hundred twenty five"))
  end
  # ten thousands
  it("returns the written form of numbers in the tens of thousands not evenly divisible by 100") do
    expect(10000.to_words()).to(eq("ten thousand"))
    expect(11125.to_words()).to(eq("ten thousand one hundred twenty five"))
  end
end
