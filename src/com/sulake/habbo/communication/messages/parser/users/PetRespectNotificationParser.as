package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1889:int;
      
      private var var_1276:PetData;
      
      private var var_1963:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1889;
      }
      
      public function get petData() : PetData
      {
         return var_1276;
      }
      
      public function flush() : Boolean
      {
         var_1276 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1963;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1889 = param1.readInteger();
         var_1963 = param1.readInteger();
         var_1276 = new PetData(param1);
         return true;
      }
   }
}
