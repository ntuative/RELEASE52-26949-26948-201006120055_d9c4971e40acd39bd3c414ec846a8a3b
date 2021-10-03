package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1699:int = 9;
      
      public static const const_1583:int = 4;
      
      public static const const_1558:int = 1;
      
      public static const const_1324:int = 10;
      
      public static const const_1662:int = 2;
      
      public static const const_1422:int = 7;
      
      public static const const_1361:int = 11;
      
      public static const const_1541:int = 3;
      
      public static const const_1250:int = 8;
      
      public static const const_1336:int = 5;
      
      public static const const_1488:int = 6;
      
      public static const const_1293:int = 12;
       
      
      private var var_2091:String;
      
      private var _roomId:int;
      
      private var var_1181:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2091;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1181 = param1.readInteger();
         var_2091 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1181;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
