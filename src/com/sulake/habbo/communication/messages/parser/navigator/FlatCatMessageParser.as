package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_401:int;
      
      private var var_1428:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_401 = param1.readInteger();
         var_1428 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_401 = 0;
         var_1428 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1428;
      }
   }
}
