package thebandsmanager

import auth.User

class Profile {
    User user
    int bandsTotalTime
    String songs
    String desiredBands
    static hasMany = [bands:Band,instruments:Instrument]

    Profile(User user,int bandsTotalTime,String songs,String desiredBands){
        this.user = user
        this.bandsTotalTime = bandsTotalTime
        this.songs = songs
        this.desiredBands = desiredBands
    }

    static constraints = {
        bandsTotalTime max: 90
    }
}
