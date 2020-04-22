RSpec.describe 'POST /api/comment', type: :request do
  let!(:article) { create(:article) }
  
  describe 'successfully creates comment' do
    let!(:comment) { create(:comment)}
    before do 
      post '/api/comment'
    end

    it 'returns a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'returns three articles' do
      expect(response_json['message']).to eq "Your comment has been created"
    end
  end
end