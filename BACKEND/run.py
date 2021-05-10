import os
from spotify_client import SpotifyClient
from flask import Flask
from flask import jsonify

app = Flask(__name__)


def main():
    global spotifyClient
    spotifyClient = SpotifyClient(os.getenv("SPOTIFY_AUTH_TOKEN"),
                                  os.getenv('SPOTIFY_USER_ID'))
    global artists
    global titles
    global times
    global images
    artists = spotifyClient.get_artists()
    titles = spotifyClient.get_titles()
    times = spotifyClient.get_times()
    images = spotifyClient.get_images()


if __name__ == '__main__':
    main()


@app.route('/')
def home():
    return "/artists -- show artists, /titles -- show titles"


@app.route('/artists')
def artist():
    return jsonify(artists)


@app.route('/titles')
def title():
    return jsonify(titles)


if __name__ == ("__main__"):
    app.run(debug=True)
