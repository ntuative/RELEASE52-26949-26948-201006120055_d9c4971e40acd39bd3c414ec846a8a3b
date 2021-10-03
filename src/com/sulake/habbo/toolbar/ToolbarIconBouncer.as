package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1702:Number;
      
      private var var_569:Number = 0;
      
      private var var_1703:Number;
      
      private var var_568:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1702 = param1;
         var_1703 = param2;
      }
      
      public function update() : void
      {
         var_568 += var_1703;
         var_569 += var_568;
         if(var_569 > 0)
         {
            var_569 = 0;
            var_568 = var_1702 * -1 * var_568;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_568 = param1;
         var_569 = 0;
      }
      
      public function get location() : Number
      {
         return var_569;
      }
   }
}
