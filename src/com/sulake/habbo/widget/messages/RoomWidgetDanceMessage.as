package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_725:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1030:int = 0;
      
      public static const const_1386:Array = [2,3,4];
       
      
      private var var_81:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_725);
         var_81 = param1;
      }
      
      public function get style() : int
      {
         return var_81;
      }
   }
}
