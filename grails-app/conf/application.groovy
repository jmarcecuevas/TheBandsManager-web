grails {
	mail {
		host = "smtp.gmail.com"
		port = 465
		username = "info.bandsmanager@gmail.com"
		password = "bands.manager1!"
		props = ["mail.smtp.auth":"true",
				 "mail.smtp.socketFactory.port":"465",
				 "mail.smtp.socketFactory.class":"javax.net.ssl.SSLSocketFactory",
				 "mail.smtp.socketFactory.fallback":"false"]
	}
}

//Event log
grails.plugins.springsecurity.useSecurityEventListener = true

grails.plugins.springsecurity.logout.handlerNames =
		['rememberMeServices',
		 'securityContextLogoutHandler',
		 'securityEventListener']

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'auth.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'auth.UserRole'
grails.plugin.springsecurity.authority.className = 'auth.Role'
grails.plugin.springsecurity.logout.postOnly = false //allows logout to work
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
		[pattern: '/',               access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/error',          access: ['permitAll']],
		[pattern: '/inspinia/form_basic',          access: ['permitAll']],
		[pattern: '/role/search',    access: ['ROLE_ADMIN']],
		[pattern: '/index',          access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/index.gsp',      access: ['permitAll']],
		[pattern: '/shutdown',       access: ['permitAll']],
		[pattern: '/assets/**',      access: ['permitAll']],
		[pattern: '/**/js/**',       access: ['permitAll']],
		[pattern: '/**/css/**',      access: ['permitAll']],
		[pattern: '/**/images/**',   access: ['permitAll']],
		[pattern: '/**/favicon.ico', access: ['permitAll']],

		//Register
		[pattern: '/register/index', access: ['permitAll']],
		[pattern: '/register/register', access: ['permitAll']],
		[pattern: '/register/_verifyRegistration', access: ['permitAll']],
		[pattern: '/register/_forgotPasswordMail', access: ['permitAll']],
		[pattern: '/register/verifyRegistration', access: ['permitAll']],
		[pattern: '/register/forgotPasswordMail', access: ['permitAll']],
		[pattern: '/register/resetPassword', access: ['permitAll']],
		[pattern: '/register/forgotPassword', access: ['permitAll']],

		//Database
		[pattern: '/dbconsole/**', access: ['ROLE_ADMIN']],

		[pattern: '/plugins/**', access: ['ROLE_USER']],

		[pattern: '/instrument/index', access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/instrument/add', access: ['ROLE_ADMIN']],
		[pattern: '/instrument/list', access: ['ROLE_USER']],
		[pattern: '/instrument/listAdmin', access: ['ROLE_ADMIN']],

		[pattern: '/musicGenre/index', access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/musicGenre/add', access: ['ROLE_ADMIN']],
		[pattern: '/musicGenre/list', access: ['ROLE_USER']],
		[pattern: '/musicGenre/listAdmin', access: ['ROLE_ADMIN']],

		[pattern: '/musicianRole/index', access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/musicianRole/add', access: ['ROLE_ADMIN']],
		[pattern: '/musicianRole/list', access: ['ROLE_USER']],
		[pattern: '/musicianRole/listAdmin', access: ['ROLE_ADMIN']],

		[pattern: '/band/index', access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/band/add', access: ['ROLE_ADMIN','ROLE_USER']],
		[pattern: '/band/list', access: ['ROLE_ADMIN','ROLE_USER']],

		[pattern: '/search/search', access: ['ROLE_USER']],
]

grails.plugin.springsecurity.filterChain.chainMap = [
		[pattern: '/assets/**',      filters: 'none'],
		[pattern: '/**/js/**',       filters: 'none'],
		[pattern: '/**/css/**',      filters: 'none'],
		[pattern: '/**/images/**',   filters: 'none'],
		[pattern: '/**/favicon.ico', filters: 'none'],
		[pattern: '/**',             filters: 'JOINED_FILTERS']
]


