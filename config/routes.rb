Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    omniauth_callbacks: 'authentication_rails/omniauth_callbacks'
  }
  namespace :api do
    namespace :v1 do
      resources :spotify do 
        collection do
          get :Playlist
          get :Album
          get :TrackSearch
          get :PlaylistSearch
          get :AlbumSearch
          get :ArtistSearch
          get :FindPlaylist
          get :FindAlbum
          get :FindArtist
          get :FindTrack
        end
      end
    end
  end
end
