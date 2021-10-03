package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2220:int;
      
      private var var_1112:int;
      
      private var var_2219:int;
      
      private var var_1621:int;
      
      private var var_121:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1621 = param1.readInteger();
         var_2219 = param1.readInteger();
         var_1112 = param1.readInteger();
         var_2220 = param1.readInteger();
         var_121 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1621);
      }
      
      public function get chatRecordId() : int
      {
         return var_2220;
      }
      
      public function get reportedUserId() : int
      {
         return var_1112;
      }
      
      public function get callerUserId() : int
      {
         return var_2219;
      }
      
      public function get callId() : int
      {
         return var_1621;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_121;
      }
   }
}
