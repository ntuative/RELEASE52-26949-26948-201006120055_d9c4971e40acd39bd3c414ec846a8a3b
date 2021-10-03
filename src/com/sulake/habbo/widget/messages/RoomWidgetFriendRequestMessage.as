package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_729:String = "RWFRM_ACCEPT";
      
      public static const const_701:String = "RWFRM_DECLINE";
       
      
      private var var_1048:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         var_1048 = param2;
      }
      
      public function get requestId() : int
      {
         return var_1048;
      }
   }
}
