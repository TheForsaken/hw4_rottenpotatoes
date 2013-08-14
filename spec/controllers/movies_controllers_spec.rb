require 'spec_helper'

describe MoviesController do
  describe 'Find Movies With Same Director' do
    it 'should call the model method that performs FMWSD search' do
			#pending "Not Yet Implemented"
			#Movie.should_receive(:fmwsd_search).with('Jeezus')
      post :find_mwsd, {:director => 'Jeezus'}
    end
    it 'should select the FMWSD Search Results template for rendering' do
      pending "Not Yet !!!"
			#Movie.stub(:fmwsd_search)
      #post :find_mwsd, {:director => 'Jeezus'}
      #response.should render_template('find_mwsd')
    end
  end
end
