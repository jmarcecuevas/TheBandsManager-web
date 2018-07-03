package thebandsmanager

class Genre {
    String name;
    static hasMany = [bands:Band]

    static constraints = {
        name nullable: false
    }
}
