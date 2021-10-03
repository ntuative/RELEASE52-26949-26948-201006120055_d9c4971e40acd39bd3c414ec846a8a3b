package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1762:Array;
      
      private var var_1764:String;
      
      private var var_1761:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1764 = param1;
         var_1762 = param2;
         var_1761 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1764;
      }
      
      public function get yieldList() : Array
      {
         return var_1762;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1761;
      }
   }
}
