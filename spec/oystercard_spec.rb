require 'oystercard'

describe Oystercard do
  it 'Describes an account when it is first opened' do
    expect(subject.balance).to eq (0)
  end

  describe '#top_up' do
    it 'tops up Oystercard by amount 20' do
      expect { subject.top_up(20) }.to change{subject.balance}.by(20)
    end
  end
end
