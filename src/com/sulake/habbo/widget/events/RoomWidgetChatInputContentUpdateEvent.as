package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_1008:String = "whisper";
      
      public static const const_1271:String = "shout";
      
      public static const const_637:String = "RWWCIDE_CHAT_INPUT_CONTENT";
       
      
      private var var_1810:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_637,param3,param4);
         var_1810 = param1;
         _userName = param2;
      }
      
      public function get messageType() : String
      {
         return var_1810;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
