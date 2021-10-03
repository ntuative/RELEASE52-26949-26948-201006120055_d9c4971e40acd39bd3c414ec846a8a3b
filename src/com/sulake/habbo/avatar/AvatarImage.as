package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class AvatarImage implements IAvatarImage, IDisposable
   {
      
      private static const CHANNELS_UNIQUE:String = "CHANNELS_UNIQUE";
      
      private static const CHANNELS_EQUAL:String = "CHANNELS_EQUAL";
      
      private static const CHANNELS_SATURATED:String = "CHANNELS_SATURATED";
      
      private static const CHANNELS_BLUE:String = "CHANNELS_BLUE";
      
      private static const CHANNELS_RED:String = "CHANNELS_RED";
      
      private static const CHANNELS_GREEN:String = "CHANNELS_GREEN";
      
      private static const const_1084:int = 2;
      
      private static const const_1083:String = AvatarSetType.const_38;
      
      private static const const_1082:String = "Default";
       
      
      private var var_436:AvatarFigureContainer;
      
      private var var_1053:Array;
      
      protected var _isDisposed:Boolean;
      
      private var var_176:Array;
      
      private var var_849:Boolean = false;
      
      private var var_1880:String;
      
      protected var var_148:String;
      
      private var var_2452:int;
      
      private var _image:BitmapData;
      
      protected var var_2350:int;
      
      private var var_136:AvatarImageCache;
      
      private var var_306:Boolean;
      
      private var var_413:Boolean;
      
      private var _assets:AssetAliasCollection;
      
      private var var_493:IAvatarDataContainer;
      
      private var var_492:int = 0;
      
      private var var_2451:int;
      
      private var var_1241:int = 0;
      
      private var var_1264:Boolean;
      
      private var var_224:Array;
      
      protected var var_92:int;
      
      private var var_718:String;
      
      private var var_595:Array;
      
      private var var_1054:Boolean = false;
      
      private var var_848:IActiveActionData;
      
      protected var var_250:IActiveActionData;
      
      protected var var_80:AvatarStructure;
      
      private var var_418:Map;
      
      public function AvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String, param5:String = null)
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var_224 = [];
         var_595 = new Array();
         super();
         var_306 = true;
         var_80 = param1;
         _assets = param2;
         var_148 = param4;
         if(var_148 == null)
         {
            var_148 = AvatarScaleType.const_56;
         }
         if(param3 == null || param3 == "")
         {
            param3 = "hr-893-45.hd-180-2.ch-210-66.lg-270-82.sh-300-91.wa-2007-.ri-1-";
            Logger.log("Using default avatar figure");
         }
         var_436 = new AvatarFigureContainer(param3);
         if(param5)
         {
            _loc6_ = var_80.getMandatorySetTypeIds();
            if(_loc6_)
            {
               _loc7_ = var_80.figureData;
               for each(_loc8_ in _loc6_)
               {
                  if(!var_436.hasPartType(_loc8_))
                  {
                     _loc9_ = var_80.getDefaultPartSet(_loc8_,param5);
                     if(_loc9_)
                     {
                        var_436.updatePart(_loc8_,_loc9_.id,[0]);
                     }
                  }
                  else
                  {
                     _loc10_ = _loc7_.getSetType(_loc8_);
                     _loc11_ = _loc10_.getPartSet(var_436.getPartSetId(_loc8_));
                     if(!_loc11_)
                     {
                        _loc12_ = var_80.getDefaultPartSet(_loc8_,param5);
                        var_436.updatePart(_loc8_,_loc12_.id,[0]);
                     }
                  }
               }
            }
         }
         var_136 = new AvatarImageCache(var_80,this,_assets,var_148);
         setDirection(const_1083,const_1084);
         var_224 = new Array();
         var_848 = new ActiveActionData(AvatarAction.const_461);
         var_848.definition = var_80.getActionDefinition(const_1082);
         resetActions();
         var_418 = new Map();
      }
      
      private function logThis(param1:String) : void
      {
      }
      
      public function getCanvasOffsets() : Array
      {
         return var_595;
      }
      
      public function getSprites() : Array
      {
         return var_176;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_isDisposed)
         {
            var_80 = null;
            _assets = null;
            var_136 = null;
            var_250 = null;
            var_436 = null;
            var_493 = null;
            var_224 = null;
            if(_image)
            {
               _image.dispose();
            }
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            if(var_418)
            {
               for each(_loc2_ in var_418)
               {
                  _loc2_.dispose();
               }
               var_418.dispose();
               var_418 = null;
            }
            _image = null;
            var_595 = null;
            _isDisposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         param2 += var_1241;
         if(param2 < AvatarDirectionAngle.const_927)
         {
            param2 = AvatarDirectionAngle.const_270 + (param2 + 1);
         }
         if(param2 > AvatarDirectionAngle.const_270)
         {
            param2 -= NaN;
         }
         if(var_80.isMainAvatarSet(param1))
         {
            var_92 = param2;
         }
         if(param1 == AvatarSetType.const_46 || param1 == AvatarSetType.const_38)
         {
            var_2350 = param2;
         }
         getCache().setDirection(param1,param2);
         var_306 = true;
      }
      
      public function getAsset(param1:String) : BitmapDataAsset
      {
         return _assets.getAssetByName(param1) as BitmapDataAsset;
      }
      
      public function get avatarSpriteData() : IAvatarDataContainer
      {
         return var_493;
      }
      
      public function initActionAppends() : void
      {
         var_224 = new Array();
         var_849 = false;
         var_718 = "";
         var_1264 = false;
      }
      
      public function isAnimating() : Boolean
      {
         return var_413;
      }
      
      public function endActionAppends() : void
      {
         sortActions();
         resetActions();
         setActionsToParts();
      }
      
      private function setActionsToParts() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_1053)
         {
            if(!(!_loc1_ || !_loc1_.definition))
            {
               if(_loc1_.definition.isAnimation && _loc1_.actionParameter == "")
               {
                  _loc1_.actionParameter = "1";
               }
               setActionToParts(_loc1_);
               if(_loc1_.definition.isAnimation)
               {
                  var_413 = true;
                  _loc2_ = var_80.getAnimation(_loc1_.definition.state + "." + _loc1_.actionParameter);
                  if(_loc2_ != null)
                  {
                     var_176 = var_176.concat(_loc2_.spriteData);
                     if(_loc2_.hasDirectionData())
                     {
                        var_1241 = _loc2_.directionData.offset;
                     }
                     if(_loc2_.hasAvatarData())
                     {
                        var_493 = _loc2_.avatarData;
                     }
                  }
               }
               if(_loc1_.actionType == AvatarAction.const_404)
               {
                  var_413 = true;
               }
               if(_loc1_.actionType == AvatarAction.const_290)
               {
                  var_413 = true;
               }
               if(_loc1_.actionType == AvatarAction.const_263)
               {
                  var_413 = true;
               }
            }
         }
      }
      
      public function getSubType() : int
      {
         return -1;
      }
      
      private function sortActions() : void
      {
         var_849 = true;
         if(var_1880 == var_718)
         {
            return;
         }
         var_1880 = var_718;
         var_1053 = var_80.sortActions(var_224);
         if(var_1053 == null)
         {
            var_595 = new Array(0,0,0);
         }
         else
         {
            var_595 = var_80.getCanvasOffsets(var_1053,var_148,var_92);
         }
      }
      
      private function addActionData(param1:String, param2:String = "") : void
      {
         var _loc3_:* = null;
         if(var_224 == null)
         {
            var_224 = new Array();
         }
         var _loc4_:int = 0;
         while(_loc4_ < var_224.length)
         {
            _loc3_ = var_224[_loc4_];
            if(_loc3_.actionType == param1 && _loc3_.actionParameter == param2)
            {
               return;
            }
            _loc4_++;
         }
         var_224.push(new ActiveActionData(param1,param2));
      }
      
      public function getPartColor(param1:String) : IPartColor
      {
         return var_80.getPartColor(var_436,param1);
      }
      
      public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         if(var_250 == null)
         {
            return null;
         }
         var _loc2_:AvatarImageCache = getCache();
         var _loc3_:AvatarCanvas = var_80.getCanvas(var_148,var_250.definition.geometryType);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         var _loc5_:Array = var_80.getBodyParts(param1,var_250.definition,var_92);
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc9_ = _loc5_[_loc7_];
            _loc10_ = _loc2_.getImageContainer(_loc9_,var_492);
            if(_loc10_ != null)
            {
               _loc11_ = _loc10_.image;
               if(_loc11_ == null)
               {
                  _loc4_.dispose();
                  return null;
               }
               _loc12_ = _loc10_.regPoint.clone();
               _loc4_.copyPixels(_loc11_,_loc11_.rect,_loc12_,null,null,true);
               _loc13_ = new Rectangle(_loc12_.x,_loc12_.y,_loc11_.width,_loc11_.height);
               if(_loc6_ == null)
               {
                  _loc6_ = _loc13_;
               }
               else
               {
                  _loc6_ = _loc6_.union(_loc13_);
               }
            }
            _loc7_--;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new Rectangle(0,0,0,0);
         }
         var _loc8_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         _loc8_.copyPixels(_loc4_,_loc6_,new Point(0,0),null,null,true);
         _loc4_.dispose();
         return _loc8_;
      }
      
      public function getScale() : String
      {
         return var_148;
      }
      
      public function get petBreed() : int
      {
         return -1;
      }
      
      public function setDirectionAngle(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param2 / 45;
         setDirection(param1,_loc3_);
      }
      
      public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         if(!var_306)
         {
            return _image;
         }
         if(var_250 == null)
         {
            return null;
         }
         if(!var_849)
         {
            endActionAppends();
         }
         var _loc3_:String = getFullImageCacheKey();
         if(_loc3_ != null)
         {
            if(false)
            {
               var_306 = false;
               if(param2)
               {
                  return (var_418[_loc3_] as BitmapData).clone();
               }
               _image = var_418[_loc3_] as BitmapData;
               var_1054 = true;
               return _image;
            }
         }
         var _loc4_:AvatarImageCache = getCache();
         var _loc5_:AvatarCanvas = var_80.getCanvas(var_148,var_250.definition.geometryType);
         if(var_1054 || _image == null || _loc5_ != null && (_image.width != _loc5_.width || _image.height != _loc5_.height))
         {
            _loc5_ = var_80.getCanvas(var_148,var_250.definition.geometryType);
            if(_loc5_ == null)
            {
               return null;
            }
            if(_image != null && !var_1054)
            {
               _image.dispose();
            }
            _image = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
            var_1054 = false;
         }
         var _loc6_:Array = var_80.getBodyParts(param1,var_250.definition,var_92);
         _image.lock();
         _image.fillRect(_image.rect,16777215);
         var _loc7_:Point = _loc5_.offset;
         if(_loc7_ == null)
         {
            _loc7_ = new Point(0,0);
         }
         var _loc8_:int = _loc6_.length - 1;
         while(_loc8_ >= 0)
         {
            _loc9_ = _loc6_[_loc8_];
            _loc10_ = _loc4_.getImageContainer(_loc9_,var_492);
            if(_loc10_ && _loc10_.image && _loc10_.regPoint)
            {
               _loc11_ = _loc10_.image;
               _loc12_ = _loc10_.regPoint.clone();
               _image.copyPixels(_loc11_,_loc11_.rect,_loc12_.add(_loc7_),null,null,true);
            }
            _loc8_--;
         }
         _image.unlock();
         var_306 = false;
         if(var_493 != null)
         {
            if(false)
            {
               _loc13_ = convertToGrayscale(_image);
               if(_image)
               {
                  _image.dispose();
               }
               _image = _loc13_;
               _image.paletteMap(_image,_image.rect,new Point(0,0),var_493.reds,[],[]);
            }
            else
            {
               _image.copyChannel(_image,_image.rect,new Point(0,0),2,8);
            }
         }
         if(_loc3_ != null)
         {
            var_418.add(_loc3_,_image.clone());
         }
         if(_image && param2)
         {
            return _image.clone();
         }
         return _image;
      }
      
      private function resetActions() : Boolean
      {
         var_413 = false;
         var_176 = [];
         var_493 = null;
         var_1241 = 0;
         var_80.removeDynamicItems();
         var_250 = var_848;
         var_250.definition = var_848.definition;
         setActionToParts(var_848);
         getCache().resetBodyPartCache(var_848);
         return true;
      }
      
      public function updateAnimationByFrames(param1:int = 1) : void
      {
         var_492 += param1;
         var_306 = true;
      }
      
      private function errorThis(param1:String) : void
      {
         Logger.log("[AvatarImageError] " + param1);
      }
      
      private function getCache() : AvatarImageCache
      {
         if(var_136 == null)
         {
            var_136 = new AvatarImageCache(var_80,this,_assets,var_148);
         }
         return var_136;
      }
      
      private function setActionToParts(param1:IActiveActionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            var_250 = param1;
            getCache().setGeometryType(param1.definition.geometryType);
         }
         getCache().setAction(param1);
         var_306 = true;
      }
      
      private function convertToGrayscale(param1:BitmapData, param2:String = "CHANNELS_EQUAL") : BitmapData
      {
         var _loc3_:* = 0.33;
         var _loc4_:* = 0.33;
         var _loc5_:* = 0.33;
         switch(param2)
         {
            case "CHANNELS_UNIQUE":
               _loc3_ = 0.3;
               _loc4_ = 0.59;
               _loc5_ = 0.11;
               break;
            case "CHANNELS_RED":
               _loc3_ = 1;
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case "CHANNELS_GREEN":
               _loc3_ = 0;
               _loc4_ = 1;
               _loc5_ = 0;
               break;
            case "CHANNELS_BLUE":
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 1;
               break;
            case "CHANNELS_DESATURATED":
               _loc3_ = 0.3086;
               _loc4_ = 0.6094;
               _loc5_ = 0.082;
         }
         var _loc7_:Array = [_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0];
         var _loc8_:ColorMatrixFilter = new ColorMatrixFilter(_loc7_);
         var _loc9_:BitmapData = new BitmapData(param1.width,param1.height,param1.transparent,4294967295);
         _loc9_.copyPixels(param1,param1.rect,new Point(0,0),null,null,false);
         _loc9_.applyFilter(_loc9_,_loc9_.rect,new Point(0,0),_loc8_);
         return _loc9_;
      }
      
      public function getFigure() : AvatarFigureContainer
      {
         return var_436;
      }
      
      public function getLayerData(param1:ISpriteDataContainer) : IAnimationLayerData
      {
         return var_80.getBodyPartData(param1.animation.id,var_492,param1.id);
      }
      
      public function getDirection() : int
      {
         return var_92;
      }
      
      public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_849 = false;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         var_718 = var_718 + param1 + _loc3_;
         switch(param1)
         {
            case AvatarAction.const_436:
               switch(_loc3_)
               {
                  case AvatarAction.const_848:
                     if(var_92 == 0)
                     {
                        setDirection(AvatarSetType.const_38,4);
                     }
                     else
                     {
                        setDirection(AvatarSetType.const_38,2);
                     }
                  case AvatarAction.const_630:
                     var_1264 = true;
                  case AvatarAction.const_461:
                  case AvatarAction.const_900:
                  case AvatarAction.const_404:
                  case AvatarAction.const_878:
                  case AvatarAction.const_767:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN POSTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_262:
               switch(_loc3_)
               {
                  case AvatarAction.const_642:
                  case AvatarAction.const_394:
                  case AvatarAction.const_580:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN GESTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_831:
            case AvatarAction.const_263:
            case AvatarAction.const_290:
            case AvatarAction.const_398:
            case AvatarAction.const_397:
            case AvatarAction.const_1047:
               addActionData(param1,_loc3_);
               break;
            case AvatarAction.const_992:
            case AvatarAction.const_880:
               _loc4_ = var_80.getActionDefinitionWithState(param1);
               if(_loc4_ != null)
               {
                  logThis("appendAction:" + [_loc3_,"->",_loc4_.getParameterValue(_loc3_)]);
                  _loc3_ = _loc4_.getParameterValue(_loc3_);
               }
               addActionData(param1,_loc3_);
               break;
            default:
               errorThis("appendAction() >> UNKNOWN ACTION TYPE: " + param1);
         }
         return true;
      }
      
      private function getFullImageCacheKey() : String
      {
         if(var_1264 && false && var_92 == var_2350)
         {
            return var_92 + var_718 + var_492 % 4;
         }
         return null;
      }
      
      public function get petType() : int
      {
         return -1;
      }
   }
}
