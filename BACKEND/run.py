import os
from spotify_client import SpotifyClient


def main():
    spotifyClient = SpotifyClient(os.getenv("SPOTIFY_AUTH_TOKEN"),
                                  os.getenv('SPOTIFY_USER_ID'))

    num_tracks_to_visualise = 20
    last_played_tracks = spotifyClient.get_last_played_tracks(
        num_tracks_to_visualise)

    print(f"Here are the last 20 tracks you listened to on Spotify:")
    for index, track in enumerate(last_played_tracks):
        print(f"{index+1}- {track}")


if __name__ == '__main__':
    main()
