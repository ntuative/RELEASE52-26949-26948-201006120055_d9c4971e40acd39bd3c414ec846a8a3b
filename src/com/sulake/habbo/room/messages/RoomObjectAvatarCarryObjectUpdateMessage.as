package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1060:int;
      
      private var var_1283:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1060 = param1;
         var_1283 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1060;
      }
      
      public function get itemName() : String
      {
         return var_1283;
      }
   }
}
