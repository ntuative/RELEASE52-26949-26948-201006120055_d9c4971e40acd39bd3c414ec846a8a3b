package com.sulake.core.runtime.events
{
   import flash.utils.Dictionary;
   
   public class EventListenerStruct
   {
       
      
      public var var_2438:Boolean;
      
      public var priority:int;
      
      private var var_139:Dictionary;
      
      public var var_2338:Boolean;
      
      public function EventListenerStruct(param1:Function, param2:Boolean = false, param3:int = 0, param4:Boolean = false)
      {
         super();
         var_139 = new Dictionary(param4);
         this.callback = param1;
         this.var_2338 = param2;
         this.priority = param3;
         this.var_2438 = param4;
      }
      
      public function set callback(param1:Function) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in var_139)
         {
            delete var_139[_loc2_];
         }
         var_139[param1] = null;
      }
      
      public function get callback() : Function
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = var_139;
         for(_loc1_ in _loc3_)
         {
            return _loc1_ as Function;
         }
         return null;
      }
   }
}
