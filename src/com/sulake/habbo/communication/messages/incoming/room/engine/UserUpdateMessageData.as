package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_235:int = 0;
      
      private var var_1935:int = 0;
      
      private var var_1937:Number = 0;
      
      private var var_1939:Number = 0;
      
      private var var_1938:Number = 0;
      
      private var var_1936:Number = 0;
      
      private var var_1934:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_224:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_224 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_86 = param4;
         var_1936 = param5;
         var_235 = param6;
         var_1935 = param7;
         var_1937 = param8;
         var_1939 = param9;
         var_1938 = param10;
         var_1934 = param11;
         var_224 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_235;
      }
      
      public function get localZ() : Number
      {
         return var_1936;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1934;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1935;
      }
      
      public function get targetX() : Number
      {
         return var_1937;
      }
      
      public function get targetY() : Number
      {
         return var_1939;
      }
      
      public function get targetZ() : Number
      {
         return var_1938;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_224.slice();
      }
   }
}
