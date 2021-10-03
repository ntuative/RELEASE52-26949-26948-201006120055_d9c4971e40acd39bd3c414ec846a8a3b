package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatSelectAvatarMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class RoomChatWidget extends RoomWidgetBase implements IUpdateReceiver
   {
      
      private static const const_788:int = 10;
      
      private static const const_521:int = 25;
      
      private static const const_1127:int = 6000;
      
      private static const const_1123:int = 9;
      
      private static const const_789:int = 4000;
      
      private static const const_1125:int = 3;
      
      private static const const_105:int = 18;
      
      private static const const_1124:int = 25;
      
      private static const const_1126:int = 1;
      
      private static const const_367:int = 9;
      
      private static const const_520:int = 8;
      
      private static const const_368:int = 0;
      
      private static const const_790:int = (const_520 + const_368) * const_105 + const_105;
       
      
      private var var_882:Number = 1;
      
      private var _disposed:Boolean = false;
      
      private var var_612:int = 18;
      
      private var var_352:IItemListWindow;
      
      private var var_733:int = 0;
      
      private var var_39:IWindowContainer;
      
      private var var_413:Boolean = false;
      
      private var var_199:int = 171.0;
      
      private var var_2009:int = 0;
      
      private var var_1303:Boolean = false;
      
      private var var_134:IWindowContainer;
      
      private var _itemList:Array;
      
      private var var_26:RoomChatHistoryViewer;
      
      private var var_2007:int = 150;
      
      private var var_508:Number = 1;
      
      private var var_67:Array;
      
      private var var_229:Array;
      
      private var var_735:int = 0;
      
      private var var_2008:int;
      
      private var var_734:Point;
      
      private var var_1549:Number = 0;
      
      private var var_22:Component = null;
      
      public function RoomChatWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:int, param6:Component)
      {
         _itemList = new Array();
         var_67 = new Array();
         var_229 = new Array();
         var_734 = new Point();
         super(param1,param2,param3);
         var_2008 = param5;
         var_39 = param1.createWindow("chat_container","",HabboWindowType.const_59,HabboWindowStyle.const_43,HabboWindowParam.const_41,new Rectangle(0,0,200,var_199 + RoomChatHistoryPulldown.const_81),null,0) as IWindowContainer;
         var_39.background = true;
         var_39.color = 33554431;
         var_39.tags.push("room_widget_chat");
         var_352 = param1.createWindow("chat_contentlist","",HabboWindowType.const_1004,HabboWindowStyle.const_41,0 | 0,new Rectangle(0,0,200,var_199),null,0) as IItemListWindow;
         var_39.addChild(var_352);
         var_134 = param1.createWindow("chat_active_content","",HabboWindowType.const_59,HabboWindowStyle.const_41,HabboWindowParam.const_71,new Rectangle(0,0,200,var_199),null,0) as IWindowContainer;
         var_352.addListItem(var_134);
         var_26 = new RoomChatHistoryViewer(this,param1,var_39,param2);
         var_2007 = int(param4.getKey("chat.history.item.max.count","150"));
         var _loc7_:Boolean = int(param4.getKey("chat.history.disabled","0")) == 1 ? true : false;
         if(var_26 != null)
         {
            var_26.disabled = _loc7_;
         }
         if(param6 != null)
         {
            var_22 = param6;
            var_22.registerUpdateReceiver(this,1);
         }
      }
      
      public function onPulldownCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(var_26 != null)
         {
            var_26.hideHistoryViewer();
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChatUpdateEvent.const_623,onChatMessage);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_264,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_758,onRoomViewUpdate);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_572,onRoomViewUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function get mainWindow() : IWindow
      {
         return var_39;
      }
      
      public function onItemMouseOver(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      public function resetArea() : void
      {
         if(var_26 == null)
         {
            return;
         }
         animationStop();
         var_199 = const_790 + const_367;
         var_39.height = var_199 + var_26.pulldownBarHeight;
         var_352.width = 0 - 0;
         var_352.height = var_199;
         var_134.width = 0 - 0;
         if(historyViewerActive())
         {
            var_134.height = getTotalContentHeight() + const_367;
         }
         else
         {
            var_134.height = var_199;
         }
         var_352.scrollV = 1;
         if(!historyViewerActive())
         {
            var_26.containerResized(var_39.rectangle);
         }
         purgeItems();
         alignItems();
      }
      
      public function resizeContainerToLowestItem() : void
      {
         var _loc4_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_67.length)
         {
            _loc4_ = var_67[_loc2_];
            if(_loc4_.y > _loc1_)
            {
               _loc1_ = _loc4_.y;
            }
            _loc2_++;
         }
         _loc1_ += const_521;
         _loc1_ = _loc1_ < 0 ? 0 : int(_loc1_);
         var _loc3_:int = var_39.rectangle.bottom;
         stretchAreaBottomTo(var_39.rectangle.top + _loc1_);
         _loc3_ -= var_39.rectangle.bottom;
         if(Math.abs(_loc3_) < RoomChatHistoryViewer.const_1044)
         {
            resetArea();
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc4_ = _itemList[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_67.length)
         {
            _loc4_ = var_67[_loc2_];
            _loc4_.y += _loc3_;
            _loc2_++;
         }
         var_1303 = true;
      }
      
      private function processBuffer() : void
      {
         if(var_413)
         {
            return;
         }
         if(false)
         {
            return;
         }
         while(var_67.length > const_1126 || historyViewerActive() && false)
         {
            activateItemFromBuffer();
         }
         var _loc1_:Boolean = false;
         if(false)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = checkLastItemAllowsAdding(var_67[0]);
         }
         if(_loc1_)
         {
            activateItemFromBuffer();
            var_733 = getTimer() + const_789;
         }
         else
         {
            if(false && false)
            {
               var_612 = getItemSpacing(_itemList["-1"],var_67[0]);
            }
            else
            {
               var_612 = const_105;
            }
            animationStart();
         }
      }
      
      private function setChatItemLocHorizontal(param1:RoomChatItem) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(param1 == null || var_26 == null)
         {
            return;
         }
         var _loc2_:Number = (param1.senderX + var_734.x) * var_882;
         var _loc3_:Number = _loc2_ - param1.width / 2;
         var _loc4_:Number = _loc3_ + param1.width;
         var _loc5_:Number = 0 - const_788;
         var _loc6_:Number = 0 + const_788 - 0;
         var _loc7_:Boolean = _loc3_ >= _loc5_ && _loc3_ <= _loc6_;
         var _loc8_:Boolean = _loc4_ >= _loc5_ && _loc4_ <= _loc6_;
         if(_loc7_ && _loc8_)
         {
            _loc9_ = _loc3_;
            _loc10_ = _loc9_;
         }
         else if(_loc2_ >= 0)
         {
            _loc9_ = _loc6_ - param1.width;
         }
         else
         {
            _loc9_ = _loc5_;
         }
         param1.x = _loc9_ + 0 + var_39.x;
         if(_loc2_ < _loc5_ || _loc2_ > _loc6_)
         {
            param1.hidePointer();
         }
         else
         {
            param1.setPointerOffset(_loc3_ - _loc9_);
         }
      }
      
      public function onItemMouseOut(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
      }
      
      private function checkLastItemAllowsAdding(param1:RoomChatItem) : Boolean
      {
         if(false)
         {
            return true;
         }
         var _loc2_:RoomChatItem = _itemList["-1"];
         if(param1 == null || _loc2_ == null)
         {
            return false;
         }
         if(_loc2_.view == null)
         {
            return true;
         }
         if(var_134.rectangle.bottom - (var_134.y + _loc2_.y + _loc2_.height) <= getItemSpacing(_loc2_,param1))
         {
            return false;
         }
         return true;
      }
      
      public function mouseUp() : void
      {
         var _loc1_:Number = var_39.rectangle.bottom - 0;
         if(_loc1_ < const_790)
         {
            if(_loc1_ <= var_199 + var_39.y)
            {
               if(historyViewerActive())
               {
                  hideHistoryViewer();
               }
               resetArea();
               return;
            }
         }
         if(var_1303 && !historyViewerActive())
         {
            resetArea();
            var_1303 = false;
         }
      }
      
      private function getFreeItemId() : String
      {
         return "chat_" + var_2008.toString() + "_item_" + (var_2009++).toString();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         while(false)
         {
            _loc1_ = var_229.shift();
         }
         var_26.dispose();
         var_26 = null;
         while(false)
         {
            _loc1_ = _itemList.shift();
            _loc1_.dispose();
         }
         while(false)
         {
            _loc1_ = var_67.shift();
            _loc1_.dispose();
         }
         var_39.dispose();
         if(var_22 != null)
         {
            var_22.removeUpdateReceiver(this);
            var_22 = null;
         }
         super.dispose();
         _disposed = true;
      }
      
      private function animationStop() : void
      {
         var_413 = false;
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChatUpdateEvent.const_623,onChatMessage);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_264,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_758,onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_572,onRoomViewUpdate);
      }
      
      public function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(var_26 != null)
         {
            var_26.beginDrag(param1.stageY,true);
         }
      }
      
      private function alignItems() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_26 == null)
         {
            return;
         }
         _loc1_ = -1;
         while(_loc1_ >= 0)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
               setChatItemLocVertical(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < _itemList.length)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemRenderable(_loc2_);
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < var_67.length)
         {
            _loc2_ = var_67[_loc1_];
            if(_loc2_ != null)
            {
               setChatItemLocHorizontal(_loc2_);
            }
            _loc1_++;
         }
      }
      
      private function onChatMessage(param1:RoomWidgetChatUpdateEvent) : void
      {
         var _loc2_:RoomChatItem = new RoomChatItem(this,windowManager,assets,getFreeItemId(),localizations);
         _loc2_.method_6(param1);
         if(var_882 != 1)
         {
            _loc2_.senderX /= var_882;
         }
         _loc2_.senderX -= 0;
         setChatItemLocHorizontal(_loc2_);
         var_67.push(_loc2_);
         processBuffer();
      }
      
      private function setChatItemLocVertical(param1:RoomChatItem) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 != null)
         {
            _loc2_ = _itemList.indexOf(param1);
            _loc3_ = !!historyViewerActive() ? 0 : Number(var_508);
            if(_loc2_ == -1)
            {
               param1.y = getAreaBottom() - (_loc3_ + 1) * const_105 - const_367;
            }
            else
            {
               _loc4_ = _itemList[_loc2_ + 1].aboveLevels;
               if(_loc4_ < 2)
               {
                  param1.y = _itemList[_loc2_ + 1].y - getItemSpacing(param1,_itemList[_loc2_ + 1]);
               }
               else
               {
                  param1.y = _itemList[_loc2_ + 1].y - _loc4_ * const_105;
               }
            }
         }
      }
      
      public function disableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_67.length)
         {
            _loc1_ = var_67[_loc2_];
            _loc1_.disableTooltip();
            _loc2_++;
         }
      }
      
      private function animationStart() : void
      {
         if(var_413)
         {
            return;
         }
         selectItemsToMove();
         var_413 = true;
      }
      
      public function hideHistoryViewer() : void
      {
         if(var_26 != null)
         {
            var_26.hideHistoryViewer();
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         if(getTimer() > var_733 && var_733 > 0)
         {
            var_733 = -1;
            animationStart();
         }
         if(var_413)
         {
            _loc2_ = param1 / const_1124 * const_1125;
            if(_loc2_ + var_735 > var_612)
            {
               _loc2_ = var_612 - var_735;
            }
            if(_loc2_ > 0)
            {
               moveItemsUp(_loc2_);
               var_735 += _loc2_;
            }
            if(var_735 >= var_612)
            {
               var_612 = const_105;
               var_735 = 0;
               animationStop();
               processBuffer();
               var_733 = getTimer() + const_789;
            }
         }
         if(var_26 != null)
         {
            var_26.update(param1);
         }
      }
      
      public function getTotalContentHeight() : int
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc3_];
            if(_loc1_ != null)
            {
               if(_loc3_ == 0)
               {
                  _loc2_ += const_105;
               }
               else
               {
                  _loc2_ += getItemSpacing(_itemList[_loc3_ - 1],_loc1_);
               }
               _loc2_ += (_loc1_.aboveLevels - 1) * const_105;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         var _loc2_:Rectangle = param1.rect;
         if(param1.scale > 0)
         {
            if(var_1549 == 0)
            {
               var_1549 = param1.scale;
            }
            else
            {
               var_882 = param1.scale / var_1549;
            }
         }
         if(param1.positionDelta != null)
         {
            var_734.x += param1.positionDelta.x / var_882;
            var_734.y += param1.positionDelta.y / var_882;
         }
         if(param1.rect != null)
         {
            if(var_26 == null)
            {
               return;
            }
            var_39.width = _loc2_.width;
            var_39.height = var_199 + var_26.pulldownBarHeight;
            var_352.width = 0 - 0;
            var_352.height = var_199;
            var_352.x = var_39.x;
            var_352.y = var_39.y;
            var_134.width = 0 - 0;
            var_134.height = var_199;
            if(historyViewerActive())
            {
               reAlignItemsToHistoryContent();
            }
            var_26.containerResized(var_39.rectangle,true);
         }
         alignItems();
      }
      
      private function getAreaBottom() : Number
      {
         if(historyViewerActive())
         {
            return var_134.height;
         }
         return var_199 + var_39.y;
      }
      
      private function purgeItems() : void
      {
         var _loc2_:* = null;
         if(historyViewerActive())
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         while(_itemList.length > var_2007)
         {
            _loc2_ = _itemList.shift();
            _loc3_ = var_229.indexOf(_loc2_);
            if(_loc3_ > -1)
            {
               var_229.splice(_loc3_,1);
            }
            if(_loc2_.view != null)
            {
               var_134.removeChild(_loc2_.view);
               _loc2_.hideView();
            }
            _loc2_.dispose();
            _loc2_ = null;
         }
         var _loc4_:Boolean = false;
         _loc1_ = 0;
         for(; _loc1_ < _itemList.length; _loc1_++)
         {
            _loc2_ = _itemList[_loc1_];
            if(_loc2_ != null)
            {
               if(_loc2_.y > -const_521)
               {
                  _loc4_ = true;
               }
               _loc2_.aboveLevels = 1;
               if(_loc2_.view != null)
               {
                  _loc3_ = var_229.indexOf(_loc2_);
                  if(_loc3_ > -1)
                  {
                     var_229.splice(_loc3_,1);
                  }
                  var_134.removeChild(_loc2_.view);
                  _loc2_.hideView();
               }
               continue;
               break;
            }
         }
         if(false)
         {
            _loc4_ = true;
         }
         if(getTotalContentHeight() > const_105 && !_loc4_ && !historyViewerActive())
         {
            if(var_26 != null)
            {
               stretchAreaBottomTo(var_39.y);
               alignItems();
               if(!historyViewerActive())
               {
                  var_26.showHistoryViewer();
               }
               if(!historyViewerVisible())
               {
                  var_26.visible = true;
               }
            }
         }
         else if(historyViewerVisible())
         {
            var_26.visible = false;
         }
      }
      
      public function stretchAreaBottomBy(param1:Number) : void
      {
         var _loc2_:Number = var_39.rectangle.bottom + param1 - 0;
         stretchAreaBottomTo(_loc2_);
      }
      
      private function activateItemFromBuffer() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(false)
         {
            return;
         }
         if(historyViewerMinimized())
         {
            resetArea();
            hideHistoryViewer();
         }
         if(!checkLastItemAllowsAdding(var_67[0]))
         {
            selectItemsToMove();
            moveItemsUp(getItemSpacing(_itemList["-1"],var_67[0]));
            if(!checkLastItemAllowsAdding(var_67[0]))
            {
               var_134.height += const_105;
               if(var_26 != null)
               {
                  var_26.containerResized(var_39.rectangle);
               }
            }
         }
         _loc1_ = var_67.shift();
         if(_loc1_ != null)
         {
            _loc1_.renderView();
            _loc2_ = _loc1_.view;
            if(_loc2_ != null)
            {
               var_134.addChild(_loc2_);
               _loc1_.timestamp = new Date().time;
               _itemList.push(_loc1_);
               _loc3_ = 0;
               if(false)
               {
                  _loc3_ = _itemList["-2"].screenLevel;
                  if(historyViewerActive())
                  {
                     _loc1_.screenLevel = _loc3_ + 1;
                  }
                  else
                  {
                     _loc1_.screenLevel = _loc3_ + Math.max(var_508,1);
                  }
               }
               else
               {
                  _loc1_.screenLevel = 100;
               }
               _loc1_.aboveLevels = var_508;
               if(_loc1_.aboveLevels > const_520 + const_368 + 2)
               {
                  _loc1_.aboveLevels = const_520 + const_368 + 2;
               }
               var_508 = 0;
               setChatItemLocHorizontal(_loc1_);
               setChatItemLocVertical(_loc1_);
               setChatItemRenderable(_loc1_);
            }
         }
      }
      
      public function stretchAreaBottomTo(param1:Number) : void
      {
         var _loc2_:int = var_39.context.getDesktopWindow().height - 0;
         param1 = Math.min(param1,_loc2_);
         var_199 = param1 - 0;
         var_39.height = var_199 + RoomChatHistoryPulldown.const_81;
         if(var_26 != null)
         {
            var_26.containerResized(var_39.rectangle);
         }
      }
      
      public function onItemMouseClick(param1:int, param2:String, param3:int, param4:int, param5:int, param6:WindowMouseEvent) : void
      {
         if(param6.shiftKey)
         {
            if(var_26 != null)
            {
               var_26.toggleHistoryViewer();
            }
            return;
         }
         var _loc7_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_352,param1,param3);
         messageListener.processWidgetMessage(_loc7_);
         var _loc8_:RoomWidgetChatSelectAvatarMessage = new RoomWidgetChatSelectAvatarMessage(RoomWidgetChatSelectAvatarMessage.const_633,param1,param2,param4,param5);
         messageListener.processWidgetMessage(_loc8_);
      }
      
      private function selectItemsToMove() : void
      {
         var _loc4_:* = null;
         if(var_413)
         {
            return;
         }
         purgeItems();
         var_229 = new Array();
         var _loc1_:int = new Date().time;
         var _loc2_:int = 0;
         if(false)
         {
            var_508 = 1;
            return;
         }
         if(historyViewerActive())
         {
            return;
         }
         ++var_508;
         var _loc3_:int = -1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _itemList[_loc3_];
            if(_loc4_.view != null)
            {
               if(_loc4_.screenLevel > const_368 || _loc4_.screenLevel == _loc2_ - 1 || _loc1_ - _loc4_.timestamp >= const_1127)
               {
                  _loc4_.timestamp = _loc1_;
                  _loc2_ = _loc4_.screenLevel;
                  --_loc4_.screenLevel;
                  var_229.push(_loc4_);
               }
            }
            _loc3_--;
         }
      }
      
      public function enableDragTooltips() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < _itemList.length)
         {
            _loc1_ = _itemList[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < var_67.length)
         {
            _loc1_ = var_67[_loc2_];
            _loc1_.enableTooltip();
            _loc2_++;
         }
      }
      
      public function reAlignItemsToHistoryContent() : void
      {
         if(historyViewerActive())
         {
            var_134.height = getTotalContentHeight() + const_367;
            alignItems();
         }
      }
      
      private function setChatItemRenderable(param1:RoomChatItem) : void
      {
         if(param1 != null)
         {
            if(param1.y < -const_521)
            {
               if(param1.view != null)
               {
                  var_134.removeChild(param1.view);
                  param1.hideView();
               }
            }
            else if(param1.view == null)
            {
               param1.renderView();
               if(param1.view != null)
               {
                  var_134.addChild(param1.view);
               }
            }
         }
      }
      
      private function historyViewerMinimized() : Boolean
      {
         return true;
      }
      
      private function moveItemsUp(param1:int) : void
      {
         var _loc3_:Boolean = false;
         if(var_229 == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc2_:* = null;
         var _loc4_:int = -1;
         var _loc5_:int = -1;
         while(_loc5_ >= 0)
         {
            _loc2_ = var_229[_loc5_];
            if(_loc2_ != null)
            {
               if(_loc4_ == -1)
               {
                  _loc4_ = _itemList.indexOf(_loc2_);
               }
               else
               {
                  _loc4_++;
               }
               _loc3_ = true;
               if(historyViewerActive())
               {
                  if(_loc2_.y - param1 + _loc2_.height < 0)
                  {
                     _loc3_ = false;
                  }
               }
               if(_loc4_ > 0)
               {
                  if(_itemList[_loc4_ - 1].view != null)
                  {
                     if(_loc2_.y - param1 - _itemList[_loc4_ - 1].y < getItemSpacing(_itemList[_loc4_ - 1],_loc2_))
                     {
                        _loc3_ = false;
                     }
                  }
               }
               if(_loc3_)
               {
                  _loc2_.y -= param1;
               }
            }
            _loc5_--;
         }
      }
      
      private function historyViewerActive() : Boolean
      {
         return var_26 == null ? false : Boolean(var_26.active);
      }
      
      private function getItemSpacing(param1:RoomChatItem, param2:RoomChatItem) : Number
      {
         if(param1.checkOverlap(param2.x,param1.y,param2.width,param2.height))
         {
            return const_105;
         }
         return const_1123;
      }
      
      public function onItemMouseDown(param1:int, param2:int, param3:int, param4:int, param5:WindowMouseEvent) : void
      {
         if(historyViewerVisible())
         {
            return;
         }
         if(var_26 != null)
         {
            var_26.beginDrag(param5.stageY);
         }
      }
      
      private function historyViewerVisible() : Boolean
      {
         return var_26 == null ? false : Boolean(var_26.visible);
      }
   }
}
