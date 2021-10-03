package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_790:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_790 = new ByteArray();
         var_790.writeShort(param1);
         var_790.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_790.position = 0;
         if(false)
         {
            _loc1_ = var_790.readShort();
            var_790.position = 0;
         }
         return _loc1_;
      }
   }
}
