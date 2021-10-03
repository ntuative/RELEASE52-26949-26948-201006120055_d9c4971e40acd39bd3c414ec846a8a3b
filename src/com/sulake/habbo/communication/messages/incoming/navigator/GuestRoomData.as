package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_2180:String;
      
      private var var_2181:int;
      
      private var var_2182:int;
      
      private var var_722:Boolean;
      
      private var var_1771:Boolean;
      
      private var var_401:int;
      
      private var var_1400:String;
      
      private var var_1779:int;
      
      private var var_1255:int;
      
      private var _ownerName:String;
      
      private var var_741:String;
      
      private var var_2183:int;
      
      private var var_2184:RoomThumbnailData;
      
      private var var_2098:Boolean;
      
      private var var_668:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_668 = new Array();
         super();
         var_401 = param1.readInteger();
         var_722 = param1.readBoolean();
         var_741 = param1.readString();
         _ownerName = param1.readString();
         var_1779 = param1.readInteger();
         var_1804 = param1.readInteger();
         var_2183 = param1.readInteger();
         var_1400 = param1.readString();
         var_2181 = param1.readInteger();
         var_2098 = param1.readBoolean();
         var_2182 = param1.readInteger();
         var_1255 = param1.readInteger();
         var_2180 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_668.push(_loc4_);
            _loc3_++;
         }
         var_2184 = new RoomThumbnailData(param1);
         var_1771 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2183;
      }
      
      public function get roomName() : String
      {
         return var_741;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get score() : int
      {
         return var_2182;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2180;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2098;
      }
      
      public function get tags() : Array
      {
         return var_668;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1771;
      }
      
      public function get event() : Boolean
      {
         return var_722;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_668 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1255;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2181;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2184;
      }
      
      public function get doorMode() : int
      {
         return var_1779;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get description() : String
      {
         return var_1400;
      }
   }
}
