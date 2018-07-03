package thebandsmanager

import auth.Role
import auth.User

class MusicRole {
    String name
    Instrument instrument

    static constraints = {
        name nullable: false
        instrument nullable: true
    }
}
