import os
from spotify_client import SpotifyClient
from flask import Flask

app = Flask(__name__)


def main():
    spotifyClient = SpotifyClient(os.getenv("SPOTIFY_AUTH_TOKEN"),
                                  os.getenv('SPOTIFY_USER_ID'))

    num_tracks_to_visualise = 20
    last_played_tracks = spotifyClient.get_last_played_tracks(
        num_tracks_to_visualise)

    for index, track in enumerate(last_played_tracks):
        print(track)


if __name__ == '__main__':
    main()


@app.route('/')
def home():
    return 'home'


if __name__ == ("__main__"):
    app.run(debug=True)
