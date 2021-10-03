package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1232:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1898:Boolean = false;
      
      private var var_2198:String = "normal";
      
      private var var_1271:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_343:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1874:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1110:Boolean = false;
      
      private var var_1111:Boolean = false;
      
      private var var_1897:Boolean = false;
      
      private var _offset:Point;
      
      private var var_2199:Boolean = true;
      
      private var var_1086:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1845:String = "";
      
      private var var_883:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1232++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1111 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1897 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_883 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_2198 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1845 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1271 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1898;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1086;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1874;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_2199 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_343;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1898 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_1110;
      }
      
      public function get flipV() : Boolean
      {
         return var_1111;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1897;
      }
      
      public function get blendMode() : String
      {
         return var_2198;
      }
      
      public function get instanceId() : int
      {
         return _instanceId;
      }
      
      public function get tag() : String
      {
         return var_1845;
      }
      
      public function get assetName() : String
      {
         return var_1271;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1086 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_2199;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1874 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_883 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_343 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_883;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1110 = param1;
         ++_updateID;
      }
   }
}
