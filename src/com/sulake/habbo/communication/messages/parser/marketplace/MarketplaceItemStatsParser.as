package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1520:Array;
      
      private var var_1751:int;
      
      private var var_1924:int;
      
      private var var_1925:int;
      
      private var var_1926:int;
      
      private var _dayOffsets:Array;
      
      private var var_1923:int;
      
      private var var_1519:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1520;
      }
      
      public function get furniTypeId() : int
      {
         return var_1924;
      }
      
      public function get historyLength() : int
      {
         return var_1926;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1925;
      }
      
      public function get offerCount() : int
      {
         return var_1923;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1519;
      }
      
      public function get averagePrice() : int
      {
         return var_1751;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1751 = param1.readInteger();
         var_1923 = param1.readInteger();
         var_1926 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1520 = [];
         var_1519 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1520.push(param1.readInteger());
            var_1519.push(param1.readInteger());
            _loc3_++;
         }
         var_1925 = param1.readInteger();
         var_1924 = param1.readInteger();
         return true;
      }
   }
}
