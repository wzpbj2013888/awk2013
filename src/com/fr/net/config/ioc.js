var ioc = {
        manageService : {
                type : "com.fr.net.manage.service.ManageServiceImpl",
                fields : {
                        dao : {
                                refer : 'dao'
                        }
                }
        },
        manageAction : {
                type : "com.fr.net.manage.action.ManageAction",
                fields : {
                	manageService : {
                                refer : 'manageService'
                        }
                }
        }
};