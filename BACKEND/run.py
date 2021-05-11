import os
from spotify_client import SpotifyClient
from flask import Flask, json
from flask import jsonify

app = Flask(__name__)


def main():
    global spotifyClient
    spotifyClient = SpotifyClient(os.getenv("SPOTIFY_AUTH_TOKEN"),
<<<<<<< HEAD
                                  os.getenv('SPOTIFY_USER_ID'))

=======
                                  os.getenv('SPOTIFY_USER_ID'),
                                  os.getenv("SPOIFY_USER_PLAYLISTS"))
    global artists
    global titles
    global times
    global images
>>>>>>> dc50bf44f3b97292c624a84a86be4e31997394a4
    artists = spotifyClient.get_artists()
    titles = spotifyClient.get_titles()
    times = spotifyClient.get_times()
    images = spotifyClient.get_images()
    playlists = spotifyClient.get_list_of_current_user_playlists()
    global data
    data = {}
    n = 0
    data['track'] = []
    for word in titles:
        data['track'].append({
            'Artist': f'{artists[n]}',
            'Title': f'{titles[n]}',
            'Duration': f'{times[n]}',
            'Image': f'{images[n]}'
        })
        n += 1


if __name__ == '__main__':
    main()


@app.route('/')
def home():
    return jsonify(data)

<<<<<<< HEAD

@app.roiute("/playlists")
def home():
    return jsonify(playlistslist)

=======
>>>>>>> dc50bf44f3b97292c624a84a86be4e31997394a4

if __name__ == ("__main__"):
    app.run(debug=True)
