package grails_mbds_22_23

import grails.gorm.services.Service
import grails.web.servlet.mvc.GrailsParameterMap

@Service(User)
interface UserService {

    User get(Serializable id)

    List<User> list(Map args)

    Long count()

    void delete(Serializable id)

    User save(User user)


}