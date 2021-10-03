package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_712:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1903:int;
      
      private var var_1902:int;
      
      private var var_1904:Boolean;
      
      private var var_1069:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_712);
         var_1902 = param1;
         var_1903 = param2;
         _color = param3;
         var_1069 = param4;
         var_1904 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1903;
      }
      
      public function get presetNumber() : int
      {
         return var_1902;
      }
      
      public function get brightness() : int
      {
         return var_1069;
      }
      
      public function get apply() : Boolean
      {
         return var_1904;
      }
   }
}
