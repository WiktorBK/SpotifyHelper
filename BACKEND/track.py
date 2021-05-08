import datetime


# ['2 hours 46 mins 40 seconds']


class Track:
    def __init__(self, name, id, artists, time, image):
        self.name = name
        self.id = id
        self.artists = artists

        seconds, time = divmod(time, 1000)
        minutes, seconds = divmod(seconds, 60)
        self.time = f'{int(minutes):01d}:{int(seconds):02d}'

        self.image = image

    def create_spotify_uri(self):
        return f'spotify:track:{self.id}'

    def __str__(self):

        return f'{self.artists} - {self.name}, {self.time}, {self.image}'
