package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1192:int;
      
      private var var_1751:int;
      
      private var var_1750:int = -1;
      
      private var var_153:int;
      
      private var var_1691:int;
      
      private var _offerId:int;
      
      private var var_1193:int;
      
      private var _furniId:int;
      
      private var var_1441:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_1691 = param3;
         var_1441 = param4;
         var_1192 = param5;
         var_153 = param6;
         var_1750 = param7;
         var_1751 = param8;
         var_1193 = param9;
      }
      
      public function get status() : int
      {
         return var_153;
      }
      
      public function get price() : int
      {
         return var_1192;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1750;
      }
      
      public function get offerCount() : int
      {
         return var_1193;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1691;
      }
      
      public function get averagePrice() : int
      {
         return var_1751;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1441;
      }
   }
}
