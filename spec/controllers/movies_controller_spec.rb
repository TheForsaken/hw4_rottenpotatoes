require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs FMWSD search' do
			Movie.should_receive(:find_mwsd).with(3)
      get :with_same_director, {:id => 3}
    end
    it 'should select the FMWSD Search Results template for rendering' do
			Movie.stub(:find_mwsd).with(3)
      get :with_same_director, {:id => 3}
      response.should render_template('with_same_director')
    end
    it 'should make the FMWSD Search results available to that template' do
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.stub(:find_mwsd).with(3).and_return(fake_results)
      get :with_same_director, {:id => 3}
      # look for controller method to assign @movies
      assigns(:movies).should == fake_results
    end
  end
end
