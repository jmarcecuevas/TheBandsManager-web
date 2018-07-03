package thebandsmanager

import auth.User

class ProfileController {
    def springSecurityService

    def index(){
        def currentUser = springSecurityService.getCurrentUser() as User
        if(Profile.list().contains(currentUser)){
            render(view: "/index")
        }else
            render(view: "/profile/form")
    }

    def form(){

    }

    def add(){
        def profile = new Profile(user: springSecurityService.getCurrentUser(),bandsTotalTime:
                params.totalTime,songs: params.songs,desiredBands: params.desiredBands).save()

        params.get("instruments").each {id ->
            profile.addToInstruments(Instrument.get(id as Serializable))
        }

        params.get("bands").each {id ->
            profile.addToBands(Band.get(id as Serializable))
        }

        render(view: "/common/success")
    }
}
