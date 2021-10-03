package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_221:String = "RWUIUE_PEER";
      
      public static const const_243:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1339:String = "BOT";
      
      public static const const_854:int = 2;
      
      public static const const_1374:int = 0;
      
      public static const const_836:int = 3;
       
      
      private var var_436:String = "";
      
      private var var_1389:String = "";
      
      private var var_1734:Boolean = false;
      
      private var var_1682:int = 0;
      
      private var var_1736:int = 0;
      
      private var var_1731:Boolean = false;
      
      private var var_1390:String = "";
      
      private var var_1737:Boolean = false;
      
      private var var_960:int = 0;
      
      private var var_1742:Boolean = true;
      
      private var var_1140:int = 0;
      
      private var var_1738:Boolean = false;
      
      private var var_1338:Boolean = false;
      
      private var var_1739:Boolean = false;
      
      private var var_1735:int = 0;
      
      private var var_1732:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1336:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1684:int = 0;
      
      private var var_1740:Boolean = false;
      
      private var var_1741:int = 0;
      
      private var var_1733:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_260 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1736;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1734;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1742;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1742 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1737 = param1;
      }
      
      public function get motto() : String
      {
         return var_1389;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1738 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1338;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1389 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1740;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1733;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1338 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1732;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1735 = param1;
      }
      
      public function get badges() : Array
      {
         return var_260;
      }
      
      public function get amIController() : Boolean
      {
         return var_1731;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1731 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1740 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1741 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1733 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1390 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1737;
      }
      
      public function set figure(param1:String) : void
      {
         var_436 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1735;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1336;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1738;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_960 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1741;
      }
      
      public function get realName() : String
      {
         return var_1390;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function set webID(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_260 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1739 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1732 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_960;
      }
      
      public function get webID() : int
      {
         return var_1684;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1140 = param1;
      }
      
      public function get xp() : int
      {
         return var_1682;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1734 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1140;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1739;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1336 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1682 = param1;
      }
   }
}
