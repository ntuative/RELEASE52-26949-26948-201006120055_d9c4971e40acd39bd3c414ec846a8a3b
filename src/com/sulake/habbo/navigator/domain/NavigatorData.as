package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1463:int = 10;
       
      
      private var var_1602:NavigatorSettingsMessageParser;
      
      private var var_1355:int;
      
      private var var_2152:int;
      
      private var var_2150:Boolean;
      
      private var var_1106:Array;
      
      private var var_915:Dictionary;
      
      private var var_1105:Array;
      
      private var var_2404:int;
      
      private var var_2151:int;
      
      private var var_2148:int;
      
      private var var_2149:int;
      
      private var var_635:PublicRoomShortData;
      
      private var var_439:RoomEventData;
      
      private var var_141:MsgWithRequestId;
      
      private var var_2147:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2146:Boolean;
      
      private var var_208:GuestRoomData;
      
      private var var_761:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1106 = new Array();
         var_1105 = new Array();
         var_915 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2152;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2146;
      }
      
      public function startLoading() : void
      {
         this.var_761 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2146 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_439 != null)
         {
            var_439.dispose();
         }
         var_439 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_141 != null && var_141 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_141 != null && var_141 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_141 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_208;
      }
      
      public function get allCategories() : Array
      {
         return var_1106;
      }
      
      public function onRoomExit() : void
      {
         if(var_439 != null)
         {
            var_439.dispose();
            var_439 = null;
         }
         if(var_635 != null)
         {
            var_635.dispose();
            var_635 = null;
         }
         if(var_208 != null)
         {
            var_208.dispose();
            var_208 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_141 = param1;
         var_761 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1602;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_141 = param1;
         var_761 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_635 = null;
         var_208 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_635 = param1.publicSpace;
            var_439 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2404 = param1.limit;
         this.var_1355 = param1.favouriteRoomIds.length;
         this.var_915 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_915[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_141 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_635;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2150;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_141 = param1;
         var_761 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2148 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_208 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_761;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1105;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1106 = param1;
         var_1105 = new Array();
         for each(_loc2_ in var_1106)
         {
            if(_loc2_.visible)
            {
               var_1105.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2151;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2149;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1602 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_141 == null)
         {
            return;
         }
         var_141.dispose();
         var_141 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_439;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_915[param1] = !!param2 ? "yes" : null;
         var_1355 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_141 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2148;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_141 != null && var_141 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2150 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2151 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2147 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_208 != null)
         {
            var_208.dispose();
         }
         var_208 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_208 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1602.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1355 >= var_2404;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2149 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2147;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_208 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2152 = param1;
      }
   }
}
