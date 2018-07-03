package thebandsmanager

class InstrumentController {

    def index() {

    }

    def add(){

    }

    def create(){
        def instrument = new Instrument(name: params.name)
        instrument.save()
        render(view: "/common/success")
    }

    def list(){
        def instruments = Instrument.list()
        [instruments: instruments]
    }

    def listAdmin(){
        def instruments = Instrument.list()
        [instruments: instruments]
    }
}
