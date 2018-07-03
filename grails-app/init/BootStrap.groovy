

import auth.*
import thebandsmanager.Band
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
        def user8 = new User(username: "est",password: "123456",firstName: "Marcos",lastName: "Sánchez",email: "dss@sd.com").save()

        UserRole.create(user2,userRole,true)
        UserRole.create(user3,userRole,true)
        UserRole.create(user4,userRole,true)
        UserRole.create(user5,userRole,true)
        UserRole.create(user6,userRole,true)
        UserRole.create(user7,userRole,true)
        UserRole.create(user8,userRole,true)

        new Genre(name: "Blues").save()
        new Genre(name: "Country").save()
        new Genre(name: "Cumbia").save()
        new Genre(name: "Disco").save()
        new Genre(name: "Electrónica").save()
        new Genre(name: "Folk").save()
        new Genre(name: "Funk").save()
        new Genre(name: "Gospel").save()
        new Genre(name: "Heavy Metal").save()
        def hiphop = new Genre(name: "Hip Hop").save()
        def rock = new Genre(name: "Rock").save()
        def punk = new Genre(name: "Punk").save()

        def band1 = new Band(name: "The Ramones",genre: punk).save()
//        band1.addToMembers(user2)
//        band1.addToMembers(user3)

        def band2 = new Band(name: "Led Zeppelin",genre: rock).save()
//        band2.addToMembers(user4)
//        band2.addToMembers(user5)

        def band3 = new Band(name: "Nirvana",genre: rock).save()
//        band3.addToMembers(user6)
//        band3.addToMembers(user7)

        def band4 = new Band(name: "50 Cent",genre: hiphop).save()
//        band4.addToMembers(user)
//        band4.addToMembers(user8)


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



        new MusicRole(name: "Guitarrista",instrument: guitarra).save()
        new MusicRole(name: "Violinista",instrument: violin).save()
        new MusicRole(name: "Baterista",instrument: bateria).save()
        new MusicRole(name: "Pianista",instrument: piano).save()
        new MusicRole(name: "Bajista",instrument: bajo).save()
    }

    def destroy = {}
}
