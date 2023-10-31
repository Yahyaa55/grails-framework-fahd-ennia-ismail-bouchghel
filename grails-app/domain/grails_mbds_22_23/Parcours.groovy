package grails_mbds_22_23

class Parcours {

    String name
    String description
    static belongsTo = [author:User]
    static  hasMany = [pois: POI,illustrations:Illustration]
    static constraints = {
        name blank: false, nullable: false
        description blank:false, nullable: false
        author nullable: false
    }
}
