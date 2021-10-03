package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_763:String = "me_menu_settings_view";
      
      public static const const_612:String = "me_menu_effects_view";
      
      public static const const_112:String = "me_menu_top_view";
      
      public static const const_1257:String = "me_menu_rooms_view";
      
      public static const const_954:String = "me_menu_dance_moves_view";
      
      public static const const_261:String = "me_menu_my_clothes_view";
       
      
      private var var_2133:Boolean = false;
      
      private var var_413:Boolean = false;
      
      private var var_1591:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1590:int = 0;
      
      private var var_2129:int = 0;
      
      private var var_2131:Boolean = false;
      
      private var var_276:Boolean = false;
      
      private var var_2130:int = 0;
      
      private var var_1677:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_633:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1351:int = 0;
      
      private var var_2132:Boolean = false;
      
      private var var_1103:Point;
      
      private var var_34:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1103 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2132 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_112);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_558,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_569,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_658,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_735,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_329,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_571,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_606,onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_229,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_214,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_722,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_243,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_334,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_114,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_511,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_164,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_34 != null && var_34.window.name == const_261)
         {
            changeView(const_112);
         }
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_413)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_633;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_276)
         {
            return;
         }
         if(var_34.window.name == const_763)
         {
            (var_34 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1351 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1590 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1590.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_276 && var_34.window.name == const_261))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_603);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_558,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_569,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_658,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_735,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_329,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_229,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_214,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_722,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_571,onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_606,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_243,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_334,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_511,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_114,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_164,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_34 != null)
         {
            var_34.dispose();
            var_34 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2133;
      }
      
      public function get creditBalance() : int
      {
         return var_1590;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1677 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_511:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_276 + " view: " + var_34.window.name);
               if(var_276 != true || var_34.window.name != const_112)
               {
                  return;
               }
               (var_34 as MeMenuMainView).setIconAssets("clothes_icon",const_112,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_114:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_2131;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1677 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2129;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_633 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_633 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1351;
         var_1351 = param1.daysLeft;
         var_2129 = param1.periodsLeft;
         var_2130 = param1.pastPeriods;
         var_2133 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1591);
         var_1591 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_34 != null)
            {
               changeView(var_34.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2131 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_34 != null && var_34.window.name != const_261)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1400,HabboWindowStyle.const_834,HabboWindowParam.const_41,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_633 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_633 = true;
            }
         }
         if(var_34 != null && var_34.window.name == const_612)
         {
            (var_34 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2130;
      }
      
      public function get habboClubDays() : int
      {
         return var_1351;
      }
      
      public function updateSize() : void
      {
         if(var_34 != null)
         {
            var_1103.x = var_34.window.width + 10;
            var_1103.y = var_34.window.height;
            var_34.window.x = 5;
            var_34.window.y = 0;
            _mainContainer.width = var_1103.x;
            _mainContainer.height = var_1103.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_276 = !var_276;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_276 = false;
               break;
            default:
               return;
         }
         if(var_276)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_543);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_34 != null)
         {
            _mainContainer.removeChild(var_34.window);
            var_34.dispose();
            var_34 = null;
         }
         var_276 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_34 != null && var_34.window.name == const_261)
         {
            changeView(const_112);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2132;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_112:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_612:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_954:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_261:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1257:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_763:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_34 != null)
            {
               _mainContainer.removeChild(var_34.window);
               var_34.dispose();
               var_34 = null;
            }
            var_34 = _loc2_;
            var_34.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1591;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_112);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_639);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_276 = true;
      }
   }
}
