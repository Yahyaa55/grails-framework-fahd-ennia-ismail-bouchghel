package grails_mbds_22_23

import grails.gorm.services.Service

@Service(POI)
interface POIService {

    POI get(Serializable id)

    List<POI> list(Map args)

    Long count()

    void delete(Serializable id)

    POI save(POI POI)

}