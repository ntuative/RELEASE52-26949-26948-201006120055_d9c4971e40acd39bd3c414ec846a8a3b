package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_343:Boolean;
      
      private var var_215:String;
      
      private var var_1376:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_215 = param1;
         var_1376 = param2;
         var_343 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1376;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_343 = param1;
      }
      
      public function get text() : String
      {
         return var_215;
      }
      
      public function get visible() : Boolean
      {
         return var_343;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1376 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_215 = param1;
      }
   }
}
