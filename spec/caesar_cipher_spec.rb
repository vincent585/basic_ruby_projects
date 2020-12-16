require './lib/caesar_cipher'

describe Cipher do
  let(:cipher) { Cipher.new }

  describe '#caesar_cipher' do
    it 'replaces only letters' do
      expect(cipher.caesar_cipher('abcdEFG,,,++', 1)).to eql('bcdeFGH,,,++')
    end

    it 'shifts forward in the alphabet for positive numbers' do
      expect(cipher.caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    it 'shifts backward in the alphabet for negative numbers' do
      expect(cipher.caesar_cipher('bcdeFGH', -1)).to eql('abcdEFG')
    end

    it 'wraps from z-a' do
      expect(cipher.caesar_cipher('z', 2)).to eql('b')
    end

    it 'wraps from a back to z' do
      expect(cipher.caesar_cipher('a', -2)).to eql('y')
    end

    it 'maintains the same case' do
      expect(cipher.caesar_cipher('wHaT a sTrInG!', 5)).to eql('bMfY f xYwNsL!')
    end
  end
end
