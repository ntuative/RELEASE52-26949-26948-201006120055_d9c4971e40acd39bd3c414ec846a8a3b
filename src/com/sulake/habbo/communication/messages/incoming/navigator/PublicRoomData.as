package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2244:int;
      
      private var var_2310:String;
      
      private var var_2139:int;
      
      private var _disposed:Boolean;
      
      private var var_2309:int;
      
      private var var_2140:String;
      
      private var var_1428:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2140 = param1.readString();
         var_2244 = param1.readInteger();
         var_2139 = param1.readInteger();
         var_2310 = param1.readString();
         var_2309 = param1.readInteger();
         var_1428 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2309;
      }
      
      public function get worldId() : int
      {
         return var_2139;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_2140;
      }
      
      public function get unitPort() : int
      {
         return var_2244;
      }
      
      public function get castLibs() : String
      {
         return var_2310;
      }
      
      public function get nodeId() : int
      {
         return var_1428;
      }
   }
}
