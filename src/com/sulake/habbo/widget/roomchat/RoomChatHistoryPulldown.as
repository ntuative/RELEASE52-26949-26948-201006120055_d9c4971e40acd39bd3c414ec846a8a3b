package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_425:int = 2;
      
      public static const const_311:int = 1;
      
      public static const const_228:int = 0;
      
      public static const const_793:int = 3;
      
      private static const const_815:int = 150;
      
      private static const const_816:int = 250;
      
      public static const const_81:int = 39;
       
      
      private var var_1644:BitmapData;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1645:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_2280:int = 0;
      
      private var var_39:IWindowContainer;
      
      private var var_101:IRegionWindow;
      
      private var var_2283:int = 30;
      
      private var var_37:int = -1;
      
      private var var_2279:BitmapData;
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2278:BitmapData;
      
      private var var_75:IBitmapWrapperWindow;
      
      private var var_2281:BitmapData;
      
      private var var_2282:BitmapData;
      
      private var var_1643:BitmapData;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _widget = param1;
         _windowManager = param2;
         _assetLibrary = param4;
         var_39 = param3;
         var_2282 = (_assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         var_1645 = (_assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         var_2281 = (_assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         var_1643 = (_assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         var_1644 = (_assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         var_2279 = (_assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         var_2278 = (_assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         var_75 = _windowManager.createWindow("chat_history_bg","",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_43,HabboWindowParam.const_71,new Rectangle(0,0,param3.width,param3.height - const_81),null,0,0) as IBitmapWrapperWindow;
         var_39.addChild(var_75);
         _window = _windowManager.createWindow("chat_pulldown","",HabboWindowType.const_59,HabboWindowStyle.const_43,HabboWindowParam.const_44,new Rectangle(0,0 - const_81,param3.width,const_81),null,0) as IWindowContainer;
         var_39.addChild(_window);
         var_101 = _windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_468,HabboWindowStyle.const_41,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_81),null,0) as IRegionWindow;
         if(var_101 != null)
         {
            var_101.background = true;
            var_101.mouseTreshold = 0;
            var_101.addEventListener(WindowMouseEvent.const_55,onPulldownMouseDown);
            var_39.addChild(var_101);
            var_101.toolTipCaption = "${chat.history.drag.tooltip}";
            var_101.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         _window.buildFromXML(_loc5_.content as XML);
         _window.addEventListener(WindowMouseEvent.const_55,onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.mouseTreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_94,onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_55,onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_33,onCloseButtonMouseOut);
         }
         _window.background = true;
         _window.color = 0;
         _window.mouseTreshold = 0;
         this.state = const_228;
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_2279.clone();
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1644.clone();
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(state)
         {
            case const_425:
               var_75.blend += param1 / const_816;
               _window.blend += param1 / const_816;
               if(false)
               {
                  state = const_311;
               }
               break;
            case const_793:
               var_75.blend = 0 - param1 / const_815;
               _window.blend = 0 - param1 / const_815;
               if(true)
               {
                  state = const_228;
               }
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1644.clone();
         }
      }
      
      public function dispose() : void
      {
         if(var_101 != null)
         {
            var_101.dispose();
            var_101 = null;
         }
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_75 != null)
         {
            var_75.dispose();
            var_75 = null;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownMouseDown(param1);
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == var_37)
         {
            return;
         }
         switch(param1)
         {
            case const_311:
               if(var_37 == const_228)
               {
                  this.state = const_425;
               }
               else
               {
                  if(_window == null || var_75 == null)
                  {
                     return;
                  }
                  _window.visible = true;
                  var_75.visible = true;
                  var_101.visible = true;
                  var_37 = param1;
               }
               break;
            case const_228:
               if(_window == null || var_75 == null)
               {
                  return;
               }
               _window.visible = false;
               var_75.visible = false;
               var_101.visible = false;
               var_37 = param1;
               break;
            case const_425:
               if(_window == null || var_75 == null)
               {
                  return;
               }
               _window.blend = 0;
               var_75.blend = 0;
               _window.visible = true;
               var_75.visible = true;
               var_37 = param1;
               break;
            case const_793:
               if(_window == null || var_75 == null)
               {
                  return;
               }
               _window.blend = 1;
               var_75.blend = 1;
               var_37 = param1;
               break;
         }
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_ + 1)
         {
            param2.copyPixels(param1,param1.rect,new Point(_loc4_ * param1.width,0));
            _loc4_++;
         }
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(_window != null)
         {
            _window.x = 0;
            _window.y = 0 - const_81;
            _window.width = var_39.width;
         }
         if(var_101 != null)
         {
            var_101.x = 0;
            var_101.y = 0 - const_81;
            var_101.width = 0 - var_2283;
         }
         if(var_75 != null)
         {
            var_75.rectangle = var_39.rectangle;
            var_75.height = 0 - const_81;
         }
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1643.clone();
         }
      }
      
      private function buildWindowGraphics() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(_window == null)
         {
            return;
         }
         if(var_2280 == _window.width)
         {
            return;
         }
         var_2280 = _window.width;
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var _loc4_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var _loc5_:IBitmapWrapperWindow = _window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         if(_loc2_ != null && _loc5_ != null)
         {
            _loc5_.bitmap = var_2281.clone();
            _loc2_.bitmap = var_1643.clone();
            var_2283 = 0 - _loc2_.x;
         }
         _loc3_.width = _loc5_.x - 5;
         _loc3_.x = 0;
         _loc4_.x = _loc5_.x + _loc5_.width + 5;
         _loc4_.width = _loc2_.x - 5 - _loc4_.x;
         if(_loc3_.width < 0)
         {
            _loc3_.width = 0;
         }
         if(_loc4_.width < 0)
         {
            _loc4_.width = 0;
         }
         if(_loc1_ != null && _loc3_ != null && _loc4_ != null)
         {
            if(_loc1_.width > 0 && _loc1_.height > 0)
            {
               _loc7_ = new BitmapData(_loc1_.width,_loc1_.height);
               tileBitmapHorz(var_2282.clone(),_loc7_);
               _loc1_.bitmap = _loc7_;
            }
            if(_loc3_.width > 0 && _loc3_.height > 0)
            {
               _loc8_ = new BitmapData(_loc3_.width,_loc3_.height);
               tileBitmapHorz(var_1645.clone(),_loc8_);
               _loc3_.bitmap = _loc8_;
            }
            if(_loc4_.width > 0 && _loc4_.height > 0)
            {
               _loc9_ = new BitmapData(_loc4_.width,_loc4_.height);
               tileBitmapHorz(var_1645.clone(),_loc9_);
               _loc4_.bitmap = _loc9_;
            }
         }
         if(var_75 == null)
         {
            return;
         }
         var_75.bitmap = var_2278.clone();
      }
   }
}
