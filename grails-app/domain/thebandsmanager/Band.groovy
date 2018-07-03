package thebandsmanager

import auth.User

class Band {
    String name;
    static hasMany = [members:User,roles:MusicRole]
    static belongsTo = [genre:Genre]

    static constraints = {
    }
}
