package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2014:Number = 0.0;
      
      private var var_1992:Number = 0.0;
      
      private var var_1993:Number = 0.0;
      
      private var var_2013:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1992 = param1;
         var_1993 = param2;
         var_2014 = param3;
         var_2013 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1992;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2014;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1993;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2013;
      }
   }
}
