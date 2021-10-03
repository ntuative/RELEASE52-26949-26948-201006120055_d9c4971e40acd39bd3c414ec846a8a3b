package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1441:String;
      
      private var var_1060:String;
      
      private var var_1946:Boolean;
      
      private var var_1622:int;
      
      private var var_1948:int;
      
      private var var_1949:Boolean;
      
      private var var_1587:String = "";
      
      private var var_1947:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1416:int;
      
      private var var_1951:Boolean;
      
      private var var_1911:int = -1;
      
      private var var_1950:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1948 = param1;
         var_1060 = param2;
         _objId = param3;
         var_1416 = param4;
         _category = param5;
         var_1441 = param6;
         var_1946 = param7;
         var_1947 = param8;
         var_1951 = param9;
         var_1949 = param10;
         var_1950 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1587;
      }
      
      public function get extra() : int
      {
         return var_1622;
      }
      
      public function get classId() : int
      {
         return var_1416;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1949;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1946;
      }
      
      public function get stripId() : int
      {
         return var_1948;
      }
      
      public function get stuffData() : String
      {
         return var_1441;
      }
      
      public function get songId() : int
      {
         return var_1911;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1587 = param1;
         var_1622 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1060;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1950;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1951;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1947;
      }
   }
}
