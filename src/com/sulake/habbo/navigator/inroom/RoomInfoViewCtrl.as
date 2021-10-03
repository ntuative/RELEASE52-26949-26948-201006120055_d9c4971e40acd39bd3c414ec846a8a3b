package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_728:IWindowContainer;
      
      private var var_1062:ITextWindow;
      
      private var var_198:RoomSettingsCtrl;
      
      private var var_1289:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1291:ITextWindow;
      
      private var var_348:IWindowContainer;
      
      private var var_1981:IWindowContainer;
      
      private var var_1983:ITextWindow;
      
      private var var_876:IWindowContainer;
      
      private var var_1540:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_741:ITextWindow;
      
      private var var_1538:IWindowContainer;
      
      private var var_1287:IWindowContainer;
      
      private var var_874:ITextWindow;
      
      private var var_1064:ITextFieldWindow;
      
      private var var_307:IWindowContainer;
      
      private var var_875:ITextWindow;
      
      private var var_1537:IButtonWindow;
      
      private var var_1063:ITextWindow;
      
      private var var_2394:int;
      
      private var var_1292:IContainerButtonWindow;
      
      private var var_873:IWindowContainer;
      
      private var var_1293:ITextWindow;
      
      private var var_1290:IContainerButtonWindow;
      
      private var var_1539:ITextWindow;
      
      private var var_1536:IButtonWindow;
      
      private var var_823:TagRenderer;
      
      private var var_1980:ITextWindow;
      
      private var var_349:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_729:ITextWindow;
      
      private var var_269:RoomThumbnailCtrl;
      
      private var var_1288:IContainerButtonWindow;
      
      private var var_1982:IWindowContainer;
      
      private var var_268:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_349 = new RoomEventViewCtrl(_navigator);
         var_198 = new RoomSettingsCtrl(_navigator,this,true);
         var_269 = new RoomThumbnailCtrl(_navigator);
         var_823 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_198);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_198.active = true;
         this.var_349.active = false;
         this.var_269.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1540.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1536.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1538.visible = Util.hasVisibleChildren(var_1538);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_741.text = param1.roomName;
         var_741.height = NaN;
         _ownerName.text = param1.ownerName;
         var_874.text = param1.description;
         var_823.refreshTags(var_348,param1.tags);
         var_874.visible = false;
         if(param1.description != "")
         {
            var_874.height = NaN;
            var_874.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_348,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_348,"thumb_down",_loc3_,onThumbDown,0);
         var_1983.visible = _loc3_;
         var_875.visible = !_loc3_;
         var_1539.visible = !_loc3_;
         var_1539.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_348,"home",param2,null,0);
         _navigator.refreshButton(var_348,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_348,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_741.y,0);
         var_348.visible = true;
         var_348.height = Util.getLowestPoint(var_348);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_424,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1537.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1289.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1288.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1292.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1290.visible = _navigator.data.canEditRoomSettings && param1;
         var_1287.visible = Util.hasVisibleChildren(var_1287);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_198.active = false;
         this.var_269.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_52,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = false;
         this.var_198.active = false;
         this.var_269.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_52,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_424,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_307);
         var_307.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_198.refresh(var_307);
         this.var_269.refresh(var_307);
         Util.moveChildrenToColumn(var_307,["room_details","room_buttons"],0,2);
         var_307.height = Util.getLowestPoint(var_307);
         var_307.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1064.setSelection(0,var_1064.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_268);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_349.refresh(var_268);
         if(Util.hasVisibleChildren(var_268) && !this.var_269.active)
         {
            Util.moveChildrenToColumn(var_268,["event_details","event_buttons"],0,2);
            var_268.height = Util.getLowestPoint(var_268);
            var_268.visible = true;
         }
         else
         {
            var_268.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_349.active = true;
         this.var_198.active = false;
         this.var_269.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1062.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1062.height = NaN;
         var_1291.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1291.height = NaN;
         Util.moveChildrenToColumn(var_728,["public_space_name","public_space_desc"],var_1062.y,0);
         var_728.visible = true;
         var_728.height = Math.max(86,Util.getLowestPoint(var_728));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_873.visible = true;
            var_1064.text = this.getEmbedData();
         }
         else
         {
            var_873.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_198.load(param1);
         this.var_198.active = true;
         this.var_349.active = false;
         this.var_269.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_198.active = false;
         this.var_349.active = false;
         this.var_269.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_71,false);
         _window.setParamFlag(HabboWindowParam.const_1180,true);
         _window.visible = false;
         var_307 = IWindowContainer(find("room_info"));
         var_348 = IWindowContainer(find("room_details"));
         var_728 = IWindowContainer(find("public_space_details"));
         var_1982 = IWindowContainer(find("owner_name_cont"));
         var_1981 = IWindowContainer(find("rating_cont"));
         var_1287 = IWindowContainer(find("room_buttons"));
         var_741 = ITextWindow(find("room_name"));
         var_1062 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_874 = ITextWindow(find("room_desc"));
         var_1291 = ITextWindow(find("public_space_desc"));
         var_1063 = ITextWindow(find("owner_caption"));
         var_875 = ITextWindow(find("rating_caption"));
         var_1983 = ITextWindow(find("rate_caption"));
         var_1539 = ITextWindow(find("rating_txt"));
         var_268 = IWindowContainer(find("event_info"));
         var_876 = IWindowContainer(find("event_details"));
         var_1538 = IWindowContainer(find("event_buttons"));
         var_1980 = ITextWindow(find("event_name"));
         var_729 = ITextWindow(find("event_desc"));
         var_1289 = IContainerButtonWindow(find("add_favourite_button"));
         var_1288 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1292 = IContainerButtonWindow(find("make_home_button"));
         var_1290 = IContainerButtonWindow(find("unmake_home_button"));
         var_1537 = IButtonWindow(find("room_settings_button"));
         var_1540 = IButtonWindow(find("create_event_button"));
         var_1536 = IButtonWindow(find("edit_event_button"));
         var_873 = IWindowContainer(find("embed_info"));
         var_1293 = ITextWindow(find("embed_info_txt"));
         var_1064 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1289,onAddFavouriteClick);
         Util.setProcDirectly(var_1288,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1537,onRoomSettingsClick);
         Util.setProcDirectly(var_1292,onMakeHomeClick);
         Util.setProcDirectly(var_1290,onUnmakeHomeClick);
         Util.setProcDirectly(var_1540,onEventSettingsClick);
         Util.setProcDirectly(var_1536,onEventSettingsClick);
         Util.setProcDirectly(var_1064,onEmbedSrcClick);
         _navigator.refreshButton(var_1289,"favourite",true,null,0);
         _navigator.refreshButton(var_1288,"favourite",true,null,0);
         _navigator.refreshButton(var_1292,"home",true,null,0);
         _navigator.refreshButton(var_1290,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_307,onHover);
         Util.setProcDirectly(var_268,onHover);
         var_1063.width = var_1063.textWidth;
         Util.moveChildrenToRow(var_1982,["owner_caption","owner_name"],var_1063.x,var_1063.y,3);
         var_875.width = var_875.textWidth;
         Util.moveChildrenToRow(var_1981,["rating_caption","rating_txt"],var_875.x,var_875.y,3);
         var_1293.height = NaN;
         Util.moveChildrenToColumn(var_873,["embed_info_txt","embed_src_txt"],var_1293.y,2);
         var_873.height = Util.getLowestPoint(var_873) + 5;
         var_2394 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1980.text = param1.eventName;
         var_729.text = param1.eventDescription;
         var_823.refreshTags(var_876,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_729.visible = false;
         if(param1.eventDescription != "")
         {
            var_729.height = NaN;
            var_729.y = Util.getLowestPoint(var_876) + 2;
            var_729.visible = true;
         }
         var_876.visible = true;
         var_876.height = Util.getLowestPoint(var_876);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_944,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
