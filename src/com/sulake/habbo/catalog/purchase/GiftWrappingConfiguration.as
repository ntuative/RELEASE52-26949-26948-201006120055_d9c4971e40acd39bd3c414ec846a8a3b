package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_616:Array;
      
      private var var_1192:int;
      
      private var var_1516:Array;
      
      private var var_617:Array;
      
      private var var_1350:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1350 = _loc2_.isWrappingEnabled;
         var_1192 = _loc2_.wrappingPrice;
         var_1516 = _loc2_.stuffTypes;
         var_617 = _loc2_.boxTypes;
         var_616 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_616;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1516;
      }
      
      public function get price() : int
      {
         return var_1192;
      }
      
      public function get boxTypes() : Array
      {
         return var_617;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1350;
      }
   }
}
