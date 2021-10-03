package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1195:String = "";
      
      private var var_1196:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1196 = "";
         var_1195 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1195;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1196 = param1.readString();
         var_1195 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1196;
      }
   }
}
