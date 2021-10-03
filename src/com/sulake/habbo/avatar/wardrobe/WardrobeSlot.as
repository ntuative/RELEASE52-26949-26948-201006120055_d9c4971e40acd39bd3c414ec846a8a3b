package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit
   {
       
      
      private var var_436:String;
      
      private var _view:IWindowContainer;
      
      private var var_312:IBitmapWrapperWindow;
      
      private var var_1587:int;
      
      private var var_631:String;
      
      private var var_1350:Boolean;
      
      private var var_29:HabboAvatarEditor;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         var_29 = param1;
         var_1587 = param2;
         createView();
         update(param4,param5,param3);
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = var_29.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         _view = var_29.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         _view.procedure = eventHandler;
         _view.visible = false;
         var_312 = _view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_77:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.const_73:
            case "f":
            case "F":
               param2 = "null";
         }
         var_436 = param1;
         var_631 = param2;
         var_1350 = param3;
         updateView();
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(var_436 && var_1350)
         {
            _loc5_ = var_29.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_631);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_38,parseInt(FigureData.const_700));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_38);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = var_29.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(var_312)
         {
            if(false)
            {
               var_312.bitmap.dispose();
            }
            var_312.bitmap = new BitmapData(var_312.width,var_312.height,true,0);
            _loc7_ = (0 - _loc1_.width) / 2;
            _loc8_ = (0 - _loc1_.height) / 2;
            var_312.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = _view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = var_1350;
         }
         var _loc4_:IContainerButtonWindow = _view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = var_1350 && var_436 != null;
         }
      }
      
      public function get gender() : String
      {
         return var_631;
      }
      
      public function get id() : int
      {
         return var_1587;
      }
      
      public function dispose() : void
      {
         var_29 = null;
         var_436 = null;
         var_631 = null;
         var_312 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               var_436 = var_29.figureData.getFigureString();
               var_631 = var_29.gender;
               var_29.handler.saveWardrobeOutfit(var_1587,this);
               updateView();
               break;
            case "get_button":
               if(var_436)
               {
                  var_29.loadAvatarInEditor(var_436,var_631,var_29.clubMemberLevel);
               }
         }
      }
   }
}
