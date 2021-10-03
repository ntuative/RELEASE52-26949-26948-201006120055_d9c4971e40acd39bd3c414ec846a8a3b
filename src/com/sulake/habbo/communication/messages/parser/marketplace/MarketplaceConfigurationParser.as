package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1872:int;
      
      private var var_1511:int;
      
      private var var_1866:int;
      
      private var var_1869:int;
      
      private var var_1870:int;
      
      private var var_1510:int;
      
      private var var_1868:int;
      
      private var var_1350:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1872;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1511;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1868;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1869;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1870;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1510;
      }
      
      public function get commission() : int
      {
         return var_1866;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1350 = param1.readBoolean();
         var_1866 = param1.readInteger();
         var_1511 = param1.readInteger();
         var_1510 = param1.readInteger();
         var_1869 = param1.readInteger();
         var_1872 = param1.readInteger();
         var_1870 = param1.readInteger();
         var_1868 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1350;
      }
   }
}
