package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.avatar.CheckUserNameResultMessageParser;
   
   public class CheckUserNameResultMessageEvent extends MessageEvent implements IMessageEvent
   {
      
      public static var var_979:int = 3;
      
      public static var var_978:int = 5;
      
      public static var var_660:int = 0;
      
      public static var var_983:int = 4;
      
      public static var var_982:int = 2;
      
      public static var var_981:int = 1;
       
      
      public function CheckUserNameResultMessageEvent(param1:Function)
      {
         super(param1,CheckUserNameResultMessageParser);
      }
      
      public function getParser() : CheckUserNameResultMessageParser
      {
         return var_7 as CheckUserNameResultMessageParser;
      }
   }
}
