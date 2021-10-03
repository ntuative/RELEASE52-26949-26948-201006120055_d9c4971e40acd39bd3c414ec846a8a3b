package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_2188:int;
      
      private var var_1192:int;
      
      private var var_2191:int;
      
      private var _offerId:int;
      
      private var var_2189:int;
      
      private var var_2192:int;
      
      private var var_2193:Boolean;
      
      private var var_2190:int;
      
      private var var_2194:Boolean;
      
      private var var_1339:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1339 = param1.readString();
         var_1192 = param1.readInteger();
         var_2194 = param1.readBoolean();
         var_2193 = param1.readBoolean();
         var_2191 = param1.readInteger();
         var_2190 = param1.readInteger();
         var_2189 = param1.readInteger();
         var_2188 = param1.readInteger();
         var_2192 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_2189;
      }
      
      public function get month() : int
      {
         return var_2188;
      }
      
      public function get price() : int
      {
         return var_1192;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_2191;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2190;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2194;
      }
      
      public function get day() : int
      {
         return var_2192;
      }
      
      public function get vip() : Boolean
      {
         return var_2193;
      }
      
      public function get productCode() : String
      {
         return var_1339;
      }
   }
}
