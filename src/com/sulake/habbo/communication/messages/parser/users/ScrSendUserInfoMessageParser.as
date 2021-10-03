package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1189:int = 2;
      
      public static const const_1605:int = 1;
       
      
      private var var_2080:int;
      
      private var var_2078:int;
      
      private var var_2076:Boolean;
      
      private var var_2082:int;
      
      private var var_1195:String;
      
      private var var_2081:Boolean;
      
      private var var_2079:int;
      
      private var var_2075:int;
      
      private var var_2077:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2078;
      }
      
      public function get isVIP() : Boolean
      {
         return var_2076;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2075;
      }
      
      public function get memberPeriods() : int
      {
         return var_2082;
      }
      
      public function get productName() : String
      {
         return var_1195;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2081;
      }
      
      public function get responseType() : int
      {
         return var_2080;
      }
      
      public function get pastClubDays() : int
      {
         return var_2077;
      }
      
      public function get pastVipDays() : int
      {
         return var_2079;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1195 = param1.readString();
         var_2078 = param1.readInteger();
         var_2082 = param1.readInteger();
         var_2075 = param1.readInteger();
         var_2080 = param1.readInteger();
         var_2081 = param1.readBoolean();
         var_2076 = param1.readBoolean();
         var_2077 = param1.readInteger();
         var_2079 = param1.readInteger();
         return true;
      }
   }
}
