package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_1031:PetData;
      
      private var var_2231:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1031 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_2231;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1031 = new PetData(param1);
         var_2231 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_1031;
      }
   }
}
