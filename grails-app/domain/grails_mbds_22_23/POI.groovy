package grails_mbds_22_23

class POI {

    String name
    String description
    double lat
    double lng
    static  hasMany = [illustrations: Illustration]
    static  belongsTo = [parcours:Parcours]
    static constraints = {
        name blank: false, nullable: false
        description blank: false,nullable: true
        lat nullable: false
        lng nullable: false
        parcours nullable: false
    }


}
