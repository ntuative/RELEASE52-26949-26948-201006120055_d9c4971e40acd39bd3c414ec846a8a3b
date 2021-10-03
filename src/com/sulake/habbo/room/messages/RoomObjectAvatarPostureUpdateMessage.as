package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1921:String;
      
      private var var_896:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1921 = param1;
         var_896 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1921;
      }
      
      public function get parameter() : String
      {
         return var_896;
      }
   }
}
