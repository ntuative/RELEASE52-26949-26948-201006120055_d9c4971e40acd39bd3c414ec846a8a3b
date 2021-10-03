package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_157:int = 1;
      
      public static const const_1223:int = 3;
      
      public static const const_427:int = 2;
       
      
      private var var_2238:int;
      
      private var var_2244:int;
      
      private var var_2243:int;
      
      private var var_2139:int;
      
      private var var_37:int;
      
      private var var_401:int;
      
      private var var_1411:int;
      
      private var var_1863:int;
      
      private var var_1112:int;
      
      private var _roomResources:String;
      
      private var var_2220:int;
      
      private var var_2240:int;
      
      private var var_2237:String;
      
      private var var_1952:String;
      
      private var var_2241:int = 0;
      
      private var var_1374:String;
      
      private var _message:String;
      
      private var var_2109:int;
      
      private var var_2242:String;
      
      private var var_1255:int;
      
      private var var_741:String;
      
      private var var_2239:String;
      
      private var var_1468:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1112 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2241 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2240;
      }
      
      public function set roomName(param1:String) : void
      {
         var_741 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2220 = param1;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_741;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_2139 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_37 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2244;
      }
      
      public function get priority() : int
      {
         return var_2238 + var_2241;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1863 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1952;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1468) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1255;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2240 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1411;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2237 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2220;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_2139;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2239 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1374 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1863;
      }
      
      public function set priority(param1:int) : void
      {
         var_2238 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2244 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2237;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2243 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1952 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2109 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1374;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1411 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2243;
      }
      
      public function set flatId(param1:int) : void
      {
         var_401 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1255 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1468 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2109;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2242 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1468;
      }
      
      public function get reportedUserId() : int
      {
         return var_1112;
      }
      
      public function get flatId() : int
      {
         return var_401;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2239;
      }
      
      public function get reporterUserName() : String
      {
         return var_2242;
      }
   }
}
