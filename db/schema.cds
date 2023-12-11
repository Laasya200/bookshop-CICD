namespace books;
using {Currency,managed,cuid} from '@sap/cds/common';

entity Books : managed,cuid {
   @title : 'Title'
   title :String;
  
   @title: 'Description'
   descr : String;

   @title: 'Stock'
   stock : String;

   @title: 'Price'
   price: Decimal;

   @title: 'Currency'
   currency: Currency;

   authors: Association to one Authors;
}
entity Authors : managed,cuid {
   @title : 'Name'
   key name :String;
}
