package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_741:String;
      
      private var var_2305:int;
      
      private var var_1668:Boolean;
      
      private var _roomId:int;
      
      private var var_2304:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1668 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_741 = param1.readString();
         var_2304 = param1.readInteger();
         var_2305 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1668;
      }
      
      public function get roomName() : String
      {
         return var_741;
      }
      
      public function get enterMinute() : int
      {
         return var_2305;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2304;
      }
   }
}
