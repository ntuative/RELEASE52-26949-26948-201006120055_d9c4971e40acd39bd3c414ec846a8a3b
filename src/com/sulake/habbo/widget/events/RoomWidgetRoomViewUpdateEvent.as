package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_758:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_572:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_264:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1541:Point;
      
      private var var_1542:Rectangle;
      
      private var var_148:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1542 = param2;
         var_1541 = param3;
         var_148 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1542 != null)
         {
            return var_1542.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_148;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1541 != null)
         {
            return var_1541.clone();
         }
         return null;
      }
   }
}
