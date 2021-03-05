require 'dice'

describe Dice do

	it 'allows the user to roll the dice' do
		expect(subject).to respond_to(:roll)
	end

	it 'returns a number between 1 and 6' do
		expect(subject.roll[0]).to be_between(1, 6)
	end

	it 'returns a random number' do
  	expect(subject).to receive(:rand).with(1..6)
    subject.roll
  end

  # it "generates a random number between 1 and 6" do
  #   allow(subject).to receive(:rand).and_return(5)
  #   expect(subject.roll[-1]).to eql(5)
  # end

	it 'user to be able to roll any number of dice at the same time' do
		expect(subject).to respond_to(:number_of_dice).with(1).argument
		expect(subject.number_of_dice(3)).to eq(3)
	end

    # describe 'score' do
    	it 'is an array' do
    		expect(subject.score.kind_of?(Array)).to eq(true)
    	end
    #
    	it 'adds a score to the array when rolled' do
        subject.roll
    		expect(subject.score.length).to eq(1)
    	end
  end
# end
