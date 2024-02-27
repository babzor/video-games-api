require 'rails_helper'

RSpec.describe Api::V1::VideoGames, type: :request do
  describe "index" do
    subject { get :index, format: :json, as: :json }

    context "functionality" do
      before do
        VideoGame.create(name: 'The Witcher 3 : Wild Hunt', '2015-05-19')
        VideoGame.create(name: 'Mario Kart 8 Deluxe', '2017-04-28')
      end

      it "returns all video games and returns status code 200" do
        subject
        expect(response).to be_successful
        video_games = JSON.parse(response.body)
        expect(video_games.length).to eq(2)
      end
    end
  end

  describe "create" do
    subject { post :create, params: {video_game: { name: 'Mario Kart 8 Deluxe'} }, format: :json, as: :json }

    context "functionality" do
      it "creates a video game and returns status code 200" do
        subject
        expect(response).to have_http_status(:success)
        video_game = JSON.parse(response.body)
        expect(video_game["name"]).to eq("Mario Kart 8 Deluxe")
      end
    end
  end

  describe "update" do
    let!(:video_game) { create(:video_game, name: 'Mario Kart 8') }
    subject { patch :update, params: {id: video_game.id.to_s,  video_game: {name: "Mario Kart 8 Deluxe"}}, format: :json, as: :json }

    context "functionality" do
      it "update the video game and returns status code 200" do
        expect(video_game["name"]).to eq("Mario Kart 8")
        subject
        expect(response).to have_http_status(:success)
        video_game = JSON.parse(response.body)
        expect(video_game["name"]).to eq("Mario Kart 8 Deluxe")
      end
    end
  end

  describe "destroy" do
    let!(:video_game1) { create(:video_game, name: "Mario Kart 8 Deluxe'")}
    subject { delete :destroy, params: {id: video_game1.id.to_s}, format: :json, as: :json }

    before do
      VideoGame.create(name: "ABC")
      VideoGame.create(name: "ZER")
    end

    context "functionality" do
      it "destroys the video game and returns status code 200" do
        expect(VideoGame.all.count).to eq(3)
        subject
        expect(response).to have_http_status(:success)
        expect(VideoGame.all.count).to eq(2)
      end
    end
    
  end
end
