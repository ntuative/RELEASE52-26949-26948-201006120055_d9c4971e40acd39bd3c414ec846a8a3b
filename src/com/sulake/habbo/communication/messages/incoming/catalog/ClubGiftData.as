package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2022:int;
      
      private var var_2021:Boolean;
      
      private var _offerId:int;
      
      private var var_2023:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2021 = param1.readBoolean();
         var_2022 = param1.readInteger();
         var_2023 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_2023;
      }
      
      public function get monthsRequired() : int
      {
         return var_2022;
      }
      
      public function get isVip() : Boolean
      {
         return var_2021;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
