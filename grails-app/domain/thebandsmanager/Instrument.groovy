package thebandsmanager

import auth.User

class Instrument {
    String name

    static constraints = {
        name nullable: false
    }
}
