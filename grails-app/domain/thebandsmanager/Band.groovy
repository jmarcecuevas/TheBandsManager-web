package thebandsmanager

import auth.User

class Band {
    String name;
    String discography;
    User contact
    static hasMany = [members:User,roles:MusicRole]
    static belongsTo = [genre:Genre]

    Band(String name,String discography,User contact){
        this.name = name
        this.discography = discography
        this.contact = contact
    }

    static constraints = {
        discography nullable: true
        roles nullable: true
        members nullable: true
        contact nullable: true
    }
}
