package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_214:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2169:Boolean = false;
      
      private var var_2167:int = 0;
      
      private var var_2170:int = 0;
      
      private var var_2048:int;
      
      private var var_2168:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_214,param6,param7);
         var_2168 = param1;
         var_2170 = param2;
         var_2167 = param3;
         var_2169 = param4;
         var_2048 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_2048;
      }
      
      public function get pastPeriods() : int
      {
         return var_2167;
      }
      
      public function get periodsLeft() : int
      {
         return var_2170;
      }
      
      public function get daysLeft() : int
      {
         return var_2168;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2169;
      }
   }
}
