package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1181:int;
      
      private var var_742:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_742 = param1.readString();
         this.var_1181 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_742;
      }
      
      public function get errorCode() : int
      {
         return this.var_1181;
      }
   }
}
