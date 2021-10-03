package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1107:Boolean;
      
      private var var_1198:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1107 = param1.readInteger() > 0;
         var_1198 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1107;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1198;
      }
      
      public function flush() : Boolean
      {
         var_1107 = false;
         var_1198 = false;
         return true;
      }
   }
}
