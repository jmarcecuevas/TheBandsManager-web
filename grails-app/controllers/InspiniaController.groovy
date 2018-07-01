

class InspiniaController {

    def index() {}

    def page() { render view: "/inspinia/${params.page}" }
}
