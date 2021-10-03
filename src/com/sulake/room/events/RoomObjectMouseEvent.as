package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1601:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1571:String = "ROE_MOUSE_ENTER";
      
      public static const const_432:String = "ROE_MOUSE_MOVE";
      
      public static const const_1594:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_238:String = "ROE_MOUSE_CLICK";
      
      public static const const_378:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2066:Boolean;
      
      private var var_2068:Boolean;
      
      private var var_2067:Boolean;
      
      private var var_2069:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_2067 = param4;
         var_2069 = param5;
         var_2066 = param6;
         var_2068 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2068;
      }
      
      public function get altKey() : Boolean
      {
         return var_2067;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2069;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2066;
      }
   }
}
