package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_631:String;
      
      private var var_436:String;
      
      private var _view:OutfitView;
      
      private var var_29:HabboAvatarEditor;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_29 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_77:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_73:
            case "f":
            case "F":
               param3 = "null";
         }
         var_436 = param2;
         var_631 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_631;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var _loc2_:* = null;
         var _loc1_:IAvatarImage = var_29.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_631);
         if(_loc1_)
         {
            _loc1_.setDirection(AvatarSetType.const_38,int(FigureData.const_700));
            _loc2_ = _loc1_.getImage(AvatarSetType.const_38,true);
            if(_view)
            {
               _view.udpate(_loc2_);
            }
            _loc1_.dispose();
         }
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function dispose() : void
      {
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         var_436 = null;
         var_631 = null;
      }
   }
}
