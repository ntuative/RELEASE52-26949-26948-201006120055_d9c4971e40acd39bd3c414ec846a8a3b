package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1980:String;
      
      private var var_401:int;
      
      private var var_2333:String;
      
      private var var_2335:String;
      
      private var var_2332:int;
      
      private var var_2331:String;
      
      private var var_2334:int;
      
      private var var_668:Array;
      
      private var var_1019:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_668 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1019 = false;
            return;
         }
         this.var_1019 = true;
         var_2332 = int(_loc2_);
         var_2333 = param1.readString();
         var_401 = int(param1.readString());
         var_2334 = param1.readInteger();
         var_1980 = param1.readString();
         var_2335 = param1.readString();
         var_2331 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_668.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2334;
      }
      
      public function get eventName() : String
      {
         return var_1980;
      }
      
      public function get eventDescription() : String
      {
         return var_2335;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2333;
      }
      
      public function get tags() : Array
      {
         return var_668;
      }
      
      public function get creationTime() : String
      {
         return var_2331;
      }
      
      public function get exists() : Boolean
      {
         return var_1019;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2332;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_401;
      }
   }
}
