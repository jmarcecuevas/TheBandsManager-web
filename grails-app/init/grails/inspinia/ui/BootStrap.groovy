package grails.inspinia.ui

import auth.*

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
    }

    def destroy = {}
}
