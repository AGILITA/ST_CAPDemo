namespace agilita.travel;
using { Currency, managed, sap.common.CodeList } from '@sap/cds/common';

entity Destinations: managed {
    key ID: UUID;
    description: String(160);
    city: String(240);
    notes: String;
}

entity Invoices: managed {
    key ID: UUID;
    description: String(160);
    customer: Association to one Customers;
    
}

entity Customers: managed {
    key ID: UUID;
    internalID: Integer;
    name: String;
}