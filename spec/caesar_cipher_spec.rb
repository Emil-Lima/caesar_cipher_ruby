require "./lib/caesar_cipher"

describe "#caesar_cipher(string, number)" do
  it "returns zab" do
    expect(caesar_cipher("abc", -1)).to eql("zab")
  end

  it "returns hello" do
    expect(caesar_cipher("hello", 0)).to eql("hello")
  end

  it "returns koxqjr" do
    expect(caesar_cipher("aengzh", 10)).to eql("koxqjr")
  end

  it "returns Cc vV 7! 93 gG9g" do
    expect(caesar_cipher("Aa tT 7! 93 eE9e", 2)).to eql("Cc vV 7! 93 gG9g")
  end
end
