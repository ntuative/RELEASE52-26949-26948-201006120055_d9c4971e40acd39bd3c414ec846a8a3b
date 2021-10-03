package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1085:int = 1;
      
      private static const const_1079:int = 3;
      
      private static const const_1086:int = 2;
      
      private static const const_1087:int = 15;
       
      
      private var var_850:int;
      
      private var var_220:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_220 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1086)
         {
            var_220 = new Array();
            var_220.push(const_1085);
            var_850 = const_1087;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_850 > 0)
         {
            --var_850;
         }
         if(var_850 == 0)
         {
            if(false)
            {
               super.setAnimation(var_220.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
