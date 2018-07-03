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

    def name(){
        render(view: "/common/success")
    }


}
