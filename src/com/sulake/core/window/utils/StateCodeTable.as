package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowState;
   import flash.utils.Dictionary;
   
   public class StateCodeTable
   {
       
      
      public function StateCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["default"] = WindowState.const_93;
         param1["active"] = WindowState.const_102;
         param1["focused"] = WindowState.const_78;
         param1["hovering"] = WindowState.const_82;
         param1["selected"] = WindowState.WINDOW_STATE_SELECTED;
         param1["pressed"] = WindowState.const_95;
         param1["disabled"] = WindowState.const_76;
         param1["locked"] = WindowState.const_69;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
