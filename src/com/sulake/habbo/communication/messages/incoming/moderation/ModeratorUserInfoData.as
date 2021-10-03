package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1956:int;
      
      private var var_1957:int;
      
      private var var_1960:int;
      
      private var _userName:String;
      
      private var var_1958:int;
      
      private var var_1959:int;
      
      private var var_1955:int;
      
      private var _userId:int;
      
      private var var_798:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1959 = param1.readInteger();
         var_1958 = param1.readInteger();
         var_798 = param1.readBoolean();
         var_1960 = param1.readInteger();
         var_1957 = param1.readInteger();
         var_1956 = param1.readInteger();
         var_1955 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1955;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_798;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1958;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1957;
      }
      
      public function get cautionCount() : int
      {
         return var_1956;
      }
      
      public function get cfhCount() : int
      {
         return var_1960;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1959;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
