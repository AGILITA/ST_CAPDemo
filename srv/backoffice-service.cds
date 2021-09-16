using { agilita.travel as my} from '../db/schema';

service backoffice {

    entity Destinations as projection on my.Destinations;
    entity Invoices as projection on my.Invoices;
    entity Customers as projection on my.Customers;

}
annotate backoffice with @(requires: 'authenticated-user');