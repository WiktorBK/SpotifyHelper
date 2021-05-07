import datetime


class Track:
    def __init__(self, name, id, artists, time, image):
        self.name = name
        self.id = id
        self.artists = artists

        time = (time/(1000*60)) % 60
        time_format = "{:.2f}".format(time)
        time_str = str(time_format)
        time_good = time_str.replace('.', ' ')
        time_split = time_good.split()
        seconds_bad = int(time_split[1])
        seconds_good = (seconds_bad/100)*60
        seconds_better = "{:.0f}".format(seconds_good)
        print(seconds_better)
        minutes = time_split[0]
        seconds = seconds_better
        self.time = f"{minutes}:{seconds}"

        self.image = image

    def create_spotify_uri(self):
        return f'spotify:track:{self.id}'

    def __str__(self):

        return f'{self.artists} - {self.name}, {self.time}, {self.image}'
