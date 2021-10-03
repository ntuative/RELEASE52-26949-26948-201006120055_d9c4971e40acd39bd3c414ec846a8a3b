package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_436:String;
      
      private var var_1788:int;
      
      private var var_2186:String;
      
      private var var_1047:int;
      
      private var var_1203:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1203;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1203 = param1.readInteger();
         var_2186 = param1.readString();
         var_1788 = param1.readInteger();
         var_436 = param1.readString();
         var_1047 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2186;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get petType() : int
      {
         return var_1047;
      }
      
      public function get level() : int
      {
         return var_1788;
      }
   }
}
