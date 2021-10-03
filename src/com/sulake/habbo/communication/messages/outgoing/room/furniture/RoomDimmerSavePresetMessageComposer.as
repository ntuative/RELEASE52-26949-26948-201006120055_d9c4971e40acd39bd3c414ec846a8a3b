package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1903:int;
      
      private var var_1902:int;
      
      private var var_2045:Boolean;
      
      private var var_2046:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2047:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1902 = param1;
         var_1903 = param2;
         var_2046 = param3;
         var_2047 = param4;
         var_2045 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1902,var_1903,var_2046,var_2047,int(var_2045)];
      }
      
      public function dispose() : void
      {
      }
   }
}
