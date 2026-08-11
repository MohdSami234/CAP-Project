using { sap.common.CodeList } from '@sap/cds/common';

namespace sap.capire.incidents;


/* =========================
   Status
   ========================= */

entity Status : CodeList {
    key code : String(1) enum {
        assigned   = 'A';
        in_process = 'I';
        on_hold    = 'H';
        resolved   = 'R';
        closed     = 'C';
    };

    criticality : Integer;
}


/* =========================
   Urgency
   ========================= */

entity Urgency : CodeList {
    key code : String(1) enum {
        high   = 'H';
        medium = 'M';
        low    = 'L';
    };
}


/* =========================
   Customers
   ========================= */

entity Customers {
    key ID : Integer;

    name        : String(100);
    email       : String(255);
    phone       : String(20);
}


/* =========================
   Incidents
   ========================= */

entity Incidents {
    key ID : Integer;

    title       : String(200);
    description : String(1000);

    status      : Association to Status;
    urgency     : Association to Urgency;

    customer    : Association to Customers;
}