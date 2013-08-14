require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs FMWSD search' do
			Movie.should_receive(:find_all_by_director).with('George Lucas')
      post :find_mwsd, {:director => 'George Lucas'}
    end
    it 'should select the FMWSD Search Results template for rendering' do
			Movie.stub(:find_all_by_director).with('George Lucas')
      post :find_mwsd, {:director => 'George Lucas'}
      response.should render_template('find_mwsd')
    end
  end
end
