package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_277:uint = 1;
      
      public static const const_453:uint = 0;
      
      public static const const_902:uint = 8;
      
      public static const const_291:uint = 4;
      
      public static const const_401:uint = 2;
       
      
      private var var_428:uint;
      
      private var var_2312:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2311:uint;
      
      private var var_101:Rectangle;
      
      private var var_668:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_101 = param3;
         _color = param4;
         var_428 = param5;
         var_2312 = param6;
         var_2311 = param7;
         var_668 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2312;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_428;
      }
      
      public function get scaleV() : uint
      {
         return var_2311;
      }
      
      public function get tags() : Array
      {
         return var_668;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_101 = null;
         var_668 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_101;
      }
   }
}
