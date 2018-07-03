package thebandsmanager


class MusicianRoleController {

    def add(){
        def instruments = Instrument.list()
        [instruments: instruments]
    }

    def create(){
        def role = new MusicRole(name: params.name,instrument: Instrument.get(params.instrument))
        role.save()
        render(view: "/common/success")
    }

    def list(){
        def roles = MusicRole.list()
        [roles: roles]
    }

    def listAdmin(){
        def roles = MusicRole.list()
        [roles: roles]
    }

    def remove(){
        print(params.id)
        def role = MusicRole.get(params.id)
        print(role.name)
        role.delete(flush:true)
        render(view: "/common/removeSuccess")
    }


}
