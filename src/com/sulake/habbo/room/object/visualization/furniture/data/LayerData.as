package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_417:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_399:int = 0;
      
      public static const const_990:int = 2;
      
      public static const const_995:int = 1;
      
      public static const const_602:Boolean = false;
      
      public static const const_624:String = "";
      
      public static const const_419:int = 0;
      
      public static const const_410:int = 0;
      
      public static const const_430:int = 0;
       
      
      private var var_1891:int = 0;
      
      private var var_1845:String = "";
      
      private var var_1485:int = 0;
      
      private var var_1892:int = 0;
      
      private var var_1890:Number = 0;
      
      private var var_1874:int = 255;
      
      private var var_1893:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1891;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1485 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1890;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1891 = param1;
      }
      
      public function get tag() : String
      {
         return var_1845;
      }
      
      public function get alpha() : int
      {
         return var_1874;
      }
      
      public function get ink() : int
      {
         return var_1485;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1890 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1892;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1893 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1893;
      }
      
      public function set tag(param1:String) : void
      {
         var_1845 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1874 = param1;
      }
   }
}
