RSpec.describe 'POST /api/comment', type: :request do
  describe 'valid credentials input' do
    let(:user) { create(:user) }
    let(:user_credentials) { user.create_new_auth_token }
  end
  describe 'successfully creates comment' do

    let!(:article) { create(:article) }
    before do 
      post '/api/comments',
      params: {
        comment: {
          body: 'you created a comment'
        }
      }
    end

    it 'returns a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'returns a successful response message' do
      expect(response_json['message']).to eq 'Your comment has been created'
    end
  end
end