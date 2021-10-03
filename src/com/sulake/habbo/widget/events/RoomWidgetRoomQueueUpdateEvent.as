package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_411:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_317:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_923:int;
      
      private var var_276:Boolean;
      
      private var var_2268:Boolean;
      
      private var var_1496:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_923 = param2;
         var_2268 = param3;
         var_276 = param4;
         var_1496 = param5;
      }
      
      public function get position() : int
      {
         return var_923;
      }
      
      public function get isActive() : Boolean
      {
         return var_276;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1496;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2268;
      }
   }
}
