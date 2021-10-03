package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2138:String;
      
      private var var_631:String;
      
      private var var_1587:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1587 = param1.readInteger();
         var_2138 = param1.readString();
         var_631 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_631;
      }
      
      public function get figureString() : String
      {
         return var_2138;
      }
      
      public function get slotId() : int
      {
         return var_1587;
      }
   }
}
