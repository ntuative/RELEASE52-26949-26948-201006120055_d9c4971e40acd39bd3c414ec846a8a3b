package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1948:int;
      
      private var var_1947:Boolean;
      
      private var var_1911:int;
      
      private var var_1441:String;
      
      private var var_2251:Boolean = false;
      
      private var var_1950:int;
      
      private var var_464:int;
      
      private var var_1060:String;
      
      private var var_1587:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1416:int;
      
      private var var_1951:Boolean;
      
      private var var_2252:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1948 = param1;
         var_1060 = param2;
         _objId = param3;
         var_1416 = param4;
         var_1441 = param5;
         var_1947 = param6;
         var_1951 = param7;
         var_1950 = param8;
         var_1587 = param9;
         var_1911 = param10;
         var_464 = -1;
      }
      
      public function get songId() : int
      {
         return var_1911;
      }
      
      public function get iconCallbackId() : int
      {
         return var_464;
      }
      
      public function get expiryTime() : int
      {
         return var_1950;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2252 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2251 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_464 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1951;
      }
      
      public function get slotId() : String
      {
         return var_1587;
      }
      
      public function get classId() : int
      {
         return var_1416;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1947;
      }
      
      public function get stuffData() : String
      {
         return var_1441;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1948;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2251;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2252;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1060;
      }
   }
}
