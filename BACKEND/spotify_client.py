import requests
from track import Track


class SpotifyClient():
    def __init__(self, auth_token, user_id):
        self.auth_token = auth_token
        self.user_id = user_id

    def get_last_played_tracks(self, limit=20):
        url = f"https://api.spotify.com/v1/me/player/recently-played?limit=20"
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )

        response_json = response.json()

        print(['popularity'] in response_json['items'])
        tracks = [Track(track['track']['name'], track['track']['id'], track['track']['artists'][0]['name']) for
                  track in response_json['items']]
        return tracks
