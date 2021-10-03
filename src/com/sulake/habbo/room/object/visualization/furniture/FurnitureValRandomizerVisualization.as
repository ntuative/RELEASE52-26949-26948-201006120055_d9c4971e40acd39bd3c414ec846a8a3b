package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1078:int = 31;
      
      private static const const_1079:int = 32;
      
      private static const const_519:int = 30;
      
      private static const const_779:int = 20;
      
      private static const const_518:int = 10;
       
      
      private var var_607:Boolean = false;
      
      private var var_220:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_220 = new Array();
         super();
         super.setAnimation(const_519);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!var_607)
            {
               var_607 = true;
               var_220 = new Array();
               var_220.push(const_1078);
               var_220.push(const_1079);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_518)
         {
            if(var_607)
            {
               var_607 = false;
               var_220 = new Array();
               if(_direction == 2)
               {
                  var_220.push(const_779 + 5 - param1);
                  var_220.push(const_518 + 5 - param1);
               }
               else
               {
                  var_220.push(const_779 + param1);
                  var_220.push(const_518 + param1);
               }
               var_220.push(const_519);
               return;
            }
            super.setAnimation(const_519);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
