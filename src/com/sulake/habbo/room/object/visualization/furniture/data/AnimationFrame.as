package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_690:int = -1;
      
      public static const const_986:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2002:int = -1;
      
      private var var_85:int = 0;
      
      private var var_1302:int = 1;
      
      private var var_881:int = 1;
      
      private var var_2004:Boolean = false;
      
      private var var_2003:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_2004 = param5;
         if(param4 < 0)
         {
            param4 = const_690;
         }
         var_881 = param4;
         var_1302 = param4;
         if(param6 >= 0)
         {
            var_2002 = param6;
            var_2003 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_881 > 0 && param1 > var_881)
         {
            param1 = var_881;
         }
         var_1302 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_881;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2003;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_881 < 0)
         {
            return const_690;
         }
         return var_1302;
      }
      
      public function get activeSequence() : int
      {
         return var_2002;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2004;
      }
      
      public function get x() : int
      {
         return var_85;
      }
   }
}
