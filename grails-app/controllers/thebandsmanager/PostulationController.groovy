package thebandsmanager

class PostulationController {
    def springSecurityService

    def index() {

    }

    def form(){

    }

    def add(){
        def postulation = new Postulation(user: springSecurityService.getCurrentUser(),genre:
            Genre.get(params.genre),instrument: Instrument.get(params.instrument),
            experience: params.experience)
        postulation.save()

        render(view: "/common/success")
    }
}
