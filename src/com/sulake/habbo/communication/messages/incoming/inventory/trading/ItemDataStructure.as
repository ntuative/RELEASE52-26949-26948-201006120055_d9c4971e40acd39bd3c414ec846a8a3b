package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1060:String;
      
      private var var_1838:int;
      
      private var var_2226:int;
      
      private var var_1622:int;
      
      private var var_2224:int;
      
      private var _category:int;
      
      private var var_2461:int;
      
      private var var_2225:int;
      
      private var var_2223:int;
      
      private var var_2227:int;
      
      private var var_2222:int;
      
      private var var_2221:Boolean;
      
      private var var_1441:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1838 = param1;
         var_1060 = param2;
         var_2226 = param3;
         var_2227 = param4;
         _category = param5;
         var_1441 = param6;
         var_1622 = param7;
         var_2223 = param8;
         var_2225 = param9;
         var_2222 = param10;
         var_2224 = param11;
         var_2221 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2227;
      }
      
      public function get extra() : int
      {
         return var_1622;
      }
      
      public function get stuffData() : String
      {
         return var_1441;
      }
      
      public function get groupable() : Boolean
      {
         return var_2221;
      }
      
      public function get creationMonth() : int
      {
         return var_2222;
      }
      
      public function get roomItemID() : int
      {
         return var_2226;
      }
      
      public function get itemType() : String
      {
         return var_1060;
      }
      
      public function get itemID() : int
      {
         return var_1838;
      }
      
      public function get songID() : int
      {
         return var_1622;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2223;
      }
      
      public function get creationYear() : int
      {
         return var_2224;
      }
      
      public function get creationDay() : int
      {
         return var_2225;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
