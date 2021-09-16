using { com.switzerland.travel as my} from '../db/schema';

service travel {

    entity Destinations as projection on my.Destinations excluding { createdAt, createdBy, modifiedAt, modifiedBy};

    entity FilteredDestinations as SELECT 
    *
    from my.Destinations 
        where city = 'Kreuzlingen' ;

    function getRandomDestination(name: String) returns String;
}