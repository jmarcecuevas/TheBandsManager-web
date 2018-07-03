package thebandsmanager

import auth.User

class Postulation {
    User user
    Genre genre
    Instrument instrument
    int experience

    static constraints = {
        experience max: 90
        user nullable: false
        genre nullable: false
        instrument nullable: false
    }
}
