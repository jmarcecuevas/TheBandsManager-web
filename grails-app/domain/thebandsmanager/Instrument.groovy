package thebandsmanager

import auth.User

import javax.management.relation.Role

class Instrument {
    String name
    static belongsTo = [rol:Role]

    static constraints = {
        name nullable: false
        rol nullable: true
    }
}
