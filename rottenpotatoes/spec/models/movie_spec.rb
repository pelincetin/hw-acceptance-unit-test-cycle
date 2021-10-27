require 'rails_helper'

describe Movie do
    describe '.all_ratings' do
      it 'returns all ratings' do
        expect(Movie.all_ratings).to eql(["G", "PG", "PG-13", "R"])
      end
    end
end