package thebandsmanager

import auth.User

class BandController {

    def add() {
        def users = User.list()
        [users: users]

//        def roles = MusicRole.list()
//        [roles: roles]
    }

    def create(){
//        def roles = MusicRole.list()
//        roles.each {rol ->
//            def a = rol.name
//            print(params.${a})
//        }
//
//
//        print(params.Guitarrista)

        render(view: "/common/success")
    }

    def list(){

    }
}
