package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1279:int;
      
      private var var_347:Number;
      
      private var var_1567:int;
      
      private var var_895:int;
      
      private var var_2052:int;
      
      private var var_2051:Boolean;
      
      private var _reportIntervalMillis:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_895;
         var _loc3_:int = getTimer();
         if(var_895 == 1)
         {
            var_347 = param1;
            var_1279 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_895);
            var_347 = var_347 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_2051 && _loc3_ - var_1279 >= _reportIntervalMillis && var_1567 < var_2052)
         {
            _loc5_ = 1000 / var_347;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++var_1567;
            var_1279 = _loc3_;
            var_895 = 0;
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         _reportIntervalMillis = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         var_2052 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         var_2051 = true;
      }
      
      function dispose() : void
      {
      }
   }
}
