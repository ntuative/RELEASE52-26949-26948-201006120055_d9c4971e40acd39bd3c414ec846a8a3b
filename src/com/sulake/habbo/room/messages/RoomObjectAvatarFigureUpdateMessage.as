package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2016:String;
      
      private var var_436:String;
      
      private var var_631:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_436 = param1;
         var_631 = param2;
         var_2016 = param3;
      }
      
      public function get race() : String
      {
         return var_2016;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get gender() : String
      {
         return var_631;
      }
   }
}
