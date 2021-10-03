package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1685:int = 2;
      
      public static const const_1269:int = 4;
      
      public static const const_1193:int = 1;
      
      public static const const_1314:int = 3;
       
      
      private var var_1079:int = 0;
      
      private var var_896:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1079;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1079 = param1.readInteger();
         if(var_1079 == 3)
         {
            var_896 = param1.readString();
         }
         else
         {
            var_896 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1079 = 0;
         var_896 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_896;
      }
   }
}
