package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_2068:Boolean = false;
      
      private var var_2067:Boolean = false;
      
      private var var_2001:String = "";
      
      private var _type:String = "";
      
      private var var_2066:Boolean = false;
      
      private var var_2123:Number = 0;
      
      private var var_2127:Number = 0;
      
      private var var_2126:Number = 0;
      
      private var var_2125:String = "";
      
      private var var_2124:Number = 0;
      
      private var var_2069:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2125 = param2;
         var_2001 = param3;
         var_2127 = param4;
         var_2126 = param5;
         var_2123 = param6;
         var_2124 = param7;
         var_2069 = param8;
         var_2067 = param9;
         var_2066 = param10;
         var_2068 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_2069;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_2068;
      }
      
      public function get localX() : Number
      {
         return var_2123;
      }
      
      public function get localY() : Number
      {
         return var_2124;
      }
      
      public function get canvasId() : String
      {
         return var_2125;
      }
      
      public function get altKey() : Boolean
      {
         return var_2067;
      }
      
      public function get spriteTag() : String
      {
         return var_2001;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2127;
      }
      
      public function get screenY() : Number
      {
         return var_2126;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_2066;
      }
   }
}
