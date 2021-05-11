import requests


class SpotifyClient():
    def __init__(self, auth_token, user_id, playlists):
        self.auth_token = auth_token
        self.user_id = user_id
        self.playlists = playlists

    def get_titles(self):
        url = f"https://api.spotify.com/v1/me/player/recently-played?limit=20"
        global response
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )
        response_json = response.json()

        titles_list = []
        for track in response_json['items']:
            titles_list.append(track['track']['name'])

        return titles_list

    def get_artists(self):
        url = f"https://api.spotify.com/v1/me/player/recently-played?limit=20"
        global response
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )
        response_json = response.json()

        artists_list = []
        for track in response_json['items']:
            artists_list.append(track['track']['artists'][0]['name'])

        return artists_list

    def get_times(self):
        url = f"https://api.spotify.com/v1/me/player/recently-played?limit=20"
        global response
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )
        response_json = response.json()

        times_list = []
        for track in response_json['items']:
            seconds, track['track']['duration_ms'] = divmod(
                track['track']['duration_ms'], 1000)
            minutes, seconds = divmod(seconds, 60)
            duration = f'{int(minutes):01d}:{int(seconds):02d}'

            times_list.append(duration)

        return times_list

    def get_images(self):
        url = f"https://api.spotify.com/v1/me/player/recently-played?limit=20"
        global response
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )
        response_json = response.json()

        images_list = []
        for track in response_json['items']:
            images_list.append(track['track']['album']['images'][1]['url'])

        return images_list


    def get_list_of_current_user_playlists(self):
        url = f"https://api.spotify.com/v1/me/playlists?limit=10"
        global response
        response = requests.get(
            url,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {self.auth_token}"
            }
        )
        response_json = response.json()

