package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetEcotronBoxDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_86:String = "RWEBDUE_CONTENTS";
      
      public static const const_65:String = "RWEBDUE_PACKAGEINFO";
       
      
      private var var_215:String;
      
      private var var_1944:BitmapData;
      
      private var var_165:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetEcotronBoxDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_165 = param2;
         var_215 = param3;
         var_29 = param4;
         var_1944 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1944;
      }
      
      public function get text() : String
      {
         return var_215;
      }
      
      public function get objectId() : int
      {
         return var_165;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
