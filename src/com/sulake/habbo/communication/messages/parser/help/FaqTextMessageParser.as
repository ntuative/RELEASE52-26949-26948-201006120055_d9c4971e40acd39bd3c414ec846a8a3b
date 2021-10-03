package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1366:int;
      
      private var var_1367:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1366;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1366 = param1.readInteger();
         var_1367 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1367;
      }
      
      public function flush() : Boolean
      {
         var_1366 = -1;
         var_1367 = null;
         return true;
      }
   }
}
