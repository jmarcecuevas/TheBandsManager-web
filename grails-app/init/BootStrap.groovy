

import auth.*
import thebandsmanager.Genre
import thebandsmanager.Instrument
import thebandsmanager.MusicRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')

        def admin = User.findOrSaveWhere(username: 'admin',password: '123456',firstName: 'Juan',lastName: 'Pérez',email: 'juan@gmail.com')
        def user = User.findOrSaveWhere(username: 'user',password: '123456',firstName: 'Esteban',lastName: 'Fernández',email: 'marce.cuevas16@gmail.com')

        if(!user.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole,true)
        }

        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,userRole,true)
        }

        def user2 = new User(username: "marce21",password: "123456",firstName: "Marcelo",lastName: "Cuevas",email: "saaadd@sd.com").save()
        def user3 = new User(username: "juan.moyano",password: "123456",firstName: "Juan",lastName: "Moyano",email: "juan@sd.com").save()
        def user4 = new User(username: "benito32",password: "123456",firstName: "Benito",lastName: "Molina",email: "rssd@sd.com").save()
        def user5 = new User(username: "gaston34",password: "123456",firstName: "Gastón",lastName: "Cubas",email: "sdewk@sd.com").save()
        def user6 = new User(username: "hernan3",password: "123456",firstName: "Hernán",lastName: "Barrios",email: "saddaa@sd.com").save()
        def user7 = new User(username: "fer2",password: "123456",firstName: "Fernando",lastName: "Altamirano",email: "sddaaaaa@sd.com").save()

        UserRole.create(user2,userRole,true)
        UserRole.create(user3,userRole,true)
        UserRole.create(user4,userRole,true)
        UserRole.create(user5,userRole,true)
        UserRole.create(user6,userRole,true)
        UserRole.create(user7,userRole,true)


        def guitarra = new Instrument(name: "Guitarra").save()
        new Instrument(name: "Guitarra acústica").save()
        new Instrument(name: "Guitarra eléctrica").save()
        def violin = new Instrument(name: "Violín").save()
        def piano = new Instrument(name: "Piano").save()
        new Instrument(name: "Trompeta").save()
        def bateria = new Instrument(name: "Batería").save()
        def bajo = new Instrument(name: "Bajo").save()
        new Instrument(name: "Flauta").save()
        new Instrument(name: "Acordeón").save()

        new Genre(name: "Blues").save()
        new Genre(name: "Country").save()
        new Genre(name: "Cumbia").save()
        new Genre(name: "Disco").save()
        new Genre(name: "Electrónica").save()
        new Genre(name: "Folk").save()
        new Genre(name: "Funk").save()
        new Genre(name: "Gospel").save()
        new Genre(name: "Heavy Metal").save()
        new Genre(name: "Hip Hop").save()
        new Genre(name: "Rock").save()

        new MusicRole(name: "Guitarrista",instrument: guitarra).save()
        new MusicRole(name: "Violinista",instrument: violin).save()
        new MusicRole(name: "Baterista",instrument: bateria).save()
        new MusicRole(name: "Pianista",instrument: piano).save()
        new MusicRole(name: "Bajista",instrument: bajo).save()
    }

    def destroy = {}
}
