class Api::V1::SpotifyController < ApplicationController

  def Playlist
    @track = RSpotify::Playlist.browse_featured(country: 'IN')
    render json: @track
  end

  def Album
    @album = RSpotify::Album.new_releases(country: 'IN')
    render json: @album
  end

  def TrackSearch
    @searchTrack = RSpotify::Track.search(params[:id]);
    render json: @searchTrack
  end

  def PlaylistSearch
    @searchPlaylist = RSpotify::Playlist.search(params[:id])
    render json: @searchPlaylist
  end

  def AlbumSearch
    @searchAlbum = RSpotify::Album.search(params[:id])
    render json: @searchAlbum
  end

  def ArtistSearch
    @searchArtist = RSpotify::Artist.search(params[:id])
    render json: @searchArtist
  end

  def FindPlaylist
    @findPlaylist = RSpotify::Playlist.find('spotify', params[:id])
    render json: @findPlaylist
  end

  def FindAlbum
    @findAlbum = RSpotify::Album.find(params[:id])
    render json: @findAlbum
  end

  def FindArtist
    @findArtist = RSpotify::Artist.find(params[:id])
    render json: @findArtist
  end

  def FindTrack
    @findTrack = RSpotify::Track.find(params[:id])
    render json: @findTrack
  end

end
