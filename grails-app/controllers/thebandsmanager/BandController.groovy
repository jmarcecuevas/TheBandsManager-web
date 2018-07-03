package thebandsmanager

import auth.User

class BandController {

    def add() {
        def users = User.list()
        [users: users]
    }

    def create(){
        def band = new Band(name: params.name,discography: params.discography,contact: User.get(params.contact))
        band.save()

        params.get("members").each {id ->
            band.addToMembers(User.get(id as Serializable))
        }

        params.get("roles").each {id ->
            band.addToRoles(MusicRole.get(id as Serializable))
        }

        render(view: "/common/success")
    }

    def list(){

    }
}
