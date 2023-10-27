package grails_mbds_22_23

import grails.gorm.services.Service

@Service(Parcours)
interface ParcoursService {

    Parcours get(Serializable id)

    List<Parcours> list(Map args)

    Long count()

    void delete(Serializable id)

    Parcours save(Parcours parcours)

}