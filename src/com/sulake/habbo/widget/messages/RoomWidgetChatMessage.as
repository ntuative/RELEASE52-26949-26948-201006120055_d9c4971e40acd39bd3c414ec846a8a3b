package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_136:int = 0;
      
      public static const const_141:int = 1;
      
      public static const const_108:int = 2;
      
      public static const const_566:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1314:int = 0;
      
      private var var_2024:String = "";
      
      private var var_215:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_215 = param2;
         var_1314 = param3;
         var_2024 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2024;
      }
      
      public function get chatType() : int
      {
         return var_1314;
      }
      
      public function get text() : String
      {
         return var_215;
      }
   }
}
