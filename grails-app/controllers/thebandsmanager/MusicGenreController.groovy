package thebandsmanager

class MusicGenreController {

    def add(){

    }

    def create(){
        def genre = new Genre(name: params.name)
        genre.save()
        render(view: "/common/success")
    }

    def list(){
        def genres = Genre.list()
        [genres: genres]
    }

    def listAdmin(){
        def genres = Genre.list()
        [genres: genres]
    }
}
