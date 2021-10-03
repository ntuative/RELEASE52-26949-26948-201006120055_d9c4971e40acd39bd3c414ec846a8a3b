package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1517:String;
      
      private var var_2056:int;
      
      private var var_2053:int;
      
      private var var_2055:int;
      
      private var var_2054:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2056 = param1.readInteger();
         var_2055 = param1.readInteger();
         var_2053 = param1.readInteger();
         var_2054 = param1.readString();
         var_1517 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1517;
      }
      
      public function get hour() : int
      {
         return var_2056;
      }
      
      public function get minute() : int
      {
         return var_2055;
      }
      
      public function get chatterName() : String
      {
         return var_2054;
      }
      
      public function get chatterId() : int
      {
         return var_2053;
      }
   }
}
