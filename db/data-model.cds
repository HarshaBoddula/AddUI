namespace my.datamodel;

entity SalesOrders {
  key ID          : Integer;
      description : String;
      customerNo  : String;
      items        : Association to  many SalesOrderItems   //managed composition (to many)
                      on items.salesorder = $self;
}

entity SalesOrderItems {
  salesorder : Association to one SalesOrders;          //managed association (to one)
  itemNo       : Integer;
      material   : String(10);
      quantity   : Decimal(10, 2);                          //Precision , scale
}
