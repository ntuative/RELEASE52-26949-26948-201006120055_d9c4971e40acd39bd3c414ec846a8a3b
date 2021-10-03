package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_809:int = 2;
      
      private static const const_1120:Array = [0,0,0];
       
      
      private var var_436:String;
      
      private const const_1449:int = 1;
      
      private var var_445:String = "";
      
      private var var_723:int = 0;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1816:int = 0;
      
      private var var_1233:String = "";
      
      private var var_1887:Boolean = false;
      
      private var var_413:Boolean;
      
      private const const_1119:int = 3;
      
      private var var_1523:String = "";
      
      private var var_66:IAvatarImage = null;
      
      private var var_724:int = 0;
      
      private const const_1716:int = 3;
      
      private var var_1189:int = -1;
      
      private var var_1270:Boolean = false;
      
      private var var_1626:int = -1;
      
      private var var_672:int = 0;
      
      private var var_2388:Array;
      
      private const const_1161:int = 0;
      
      private var var_1398:Boolean = false;
      
      private var var_1623:int = -1;
      
      private var var_346:ExperienceData;
      
      private var var_1524:Number = NaN;
      
      private var var_940:Boolean = false;
      
      private var var_1397:Boolean = false;
      
      private var var_322:BitmapDataAsset;
      
      private const const_1467:int = 2;
      
      private var var_1057:int = 0;
      
      private var var_775:PetVisualizationData = null;
      
      private var var_502:Map;
      
      private var var_1269:Boolean = false;
      
      public function PetVisualization()
      {
         super();
         var_2388 = new Array();
         var_502 = new Map();
         var_413 = false;
      }
      
      public function imageReady() : void
      {
         var_1270 = true;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_436,var_445,var_1523);
         if(var_1233 != null && var_1233 != "")
         {
            param1.appendAction(AvatarAction.const_262,var_1233);
         }
         if(var_1887 || var_1397)
         {
            param1.appendAction(AvatarAction.const_397);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + const_1119;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         var_1269 = false;
         switch(var_445)
         {
            case AvatarAction.const_630:
            case AvatarAction.const_1049:
            case AvatarAction.const_858:
            case AvatarAction.const_1024:
            case AvatarAction.const_909:
            case AvatarAction.const_847:
            case AvatarAction.const_767:
            case AvatarAction.const_263:
            case AvatarAction.const_290:
               var_1269 = true;
         }
         var_1398 = false;
         var_940 = false;
         if(var_445 == "lay")
         {
            var_940 = true;
            _loc1_ = int(var_1523);
            if(_loc1_ < 0)
            {
               var_1398 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_502)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_502.reset();
         var_66 = null;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var_775 = param1 as PetVisualizationData;
         createSprites(const_1119);
         var_346 = new ExperienceData(var_775);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_502 != null)
         {
            _loc1_ = var_502.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_502.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_502.dispose();
         if(var_346)
         {
            var_346.dispose();
         }
         var_346 = null;
         var_775 = null;
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(const_1449);
         var_322 = null;
         _loc2_ = getSprite(const_1449);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            var_322 = var_66.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            var_322 = var_66.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(var_322)
         {
            _loc2_.asset = var_322.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_502.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = var_775.getAvatar(var_436,param1,this);
            if(_loc3_ != null)
            {
               var_502.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_166)
         {
            var_1887 = param1.getNumber(RoomObjectVariableEnum.const_441) > 0;
            var_1233 = param1.getString(RoomObjectVariableEnum.const_272);
            var_445 = param1.getString(RoomObjectVariableEnum.const_416);
            var_1523 = param1.getString(RoomObjectVariableEnum.const_713);
            var_1524 = param1.getNumber(RoomObjectVariableEnum.const_323);
            var_1057 = param1.getNumber(RoomObjectVariableEnum.const_999);
            var_1816 = param1.getNumber(RoomObjectVariableEnum.const_907);
            validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_194);
            if(var_436 != _loc3_)
            {
               var_436 = _loc3_;
               resetAvatarImages();
            }
            var_166 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(var_775 == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         if(var_1270)
         {
            var_1270 = false;
            var_723 = 0;
            var_724 = 1;
            resetAvatarImages();
         }
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc8_ || _loc5_ != var_149 || var_66 == null)
         {
            if(_loc5_ != var_149)
            {
               var_149 = _loc5_;
               _loc6_ = true;
            }
            if(_loc6_ || var_66 == null)
            {
               var_66 = getAvatarImage(_loc5_);
            }
            if(var_66 == null)
            {
               return;
            }
            if(_loc6_)
            {
               updateShadow(_loc5_);
            }
            _loc7_ = updateObject(_loc3_,param1,true);
            updateActions(var_66);
         }
         else
         {
            _loc7_ = updateObject(_loc3_,param1);
         }
         var _loc9_:Boolean = _loc7_ || _loc8_ || _loc6_;
         var _loc10_:Boolean = var_413 || var_724 > 0 || var_1269;
         var_346.alpha = 0;
         if(var_1057 > 0)
         {
            _loc11_ = param2 - var_1057;
            if(_loc11_ < AvatarAction.const_888)
            {
               var_346.alpha = int(Math.sin(_loc11_ / 0 * 0) * 255);
               var_346.setExperience(var_1816);
               var_724 = const_1716;
            }
            else
            {
               var_1057 = 0;
            }
            _loc12_ = getSprite(const_1467);
            if(_loc12_ != null)
            {
               if(false)
               {
                  _loc12_.asset = var_346.image;
                  _loc12_.offsetX = -20;
                  _loc12_.offsetY = -80;
                  _loc12_.alpha = var_346.alpha;
                  _loc12_.visible = true;
               }
               else
               {
                  _loc12_.asset = null;
                  _loc12_.visible = false;
               }
            }
         }
         if(_loc9_ || _loc10_)
         {
            increaseUpdateId();
            --var_724;
            ++var_672;
            --var_723;
            if(!(var_723 <= 0 || _loc6_))
            {
               return;
            }
            var_66.updateAnimationByFrames(1);
            var_723 = const_809;
            var_413 = var_66.isAnimating();
            _loc13_ = var_66.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1120;
            }
            _loc14_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc14_ = Math.min(_loc5_ / 2.75,0);
            }
            _loc12_ = getSprite(const_1161);
            if(_loc12_)
            {
               _loc17_ = var_66.getImage(AvatarSetType.const_38,false);
               if(_loc17_ != null)
               {
                  _loc12_.asset = _loc17_;
               }
               if(_loc5_ < 48)
               {
                  _loc12_.offsetX = -16 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 8 + _loc13_[1] + _loc14_;
               }
               else
               {
                  _loc12_.offsetX = -32 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 16 + _loc13_[1] + _loc14_;
               }
            }
            _loc15_ = const_1119;
            for each(_loc16_ in var_66.getSprites())
            {
               _loc12_ = getSprite(_loc15_);
               if(_loc12_ != null)
               {
                  _loc18_ = var_66.getLayerData(_loc16_);
                  _loc19_ = 0;
                  _loc20_ = _loc16_.getDirectionOffsetX(var_66.getDirection());
                  _loc21_ = _loc16_.getDirectionOffsetY(var_66.getDirection());
                  _loc22_ = _loc16_.getDirectionOffsetZ(var_66.getDirection());
                  _loc23_ = 0;
                  if(_loc16_.hasDirections)
                  {
                     _loc23_ = var_66.getDirection();
                  }
                  if(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.animationFrame;
                     _loc20_ += _loc18_.dx;
                     _loc21_ += _loc18_.dy;
                     _loc23_ += _loc18_.directionOffset;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  if(_loc23_ < 0)
                  {
                     _loc23_ += 8;
                  }
                  if(_loc23_ > 7)
                  {
                     _loc23_ -= 8;
                  }
                  _loc24_ = var_66.getScale() + "_" + _loc16_.member + "_" + _loc23_ + "_" + _loc19_;
                  _loc25_ = var_66.getAsset(_loc24_);
                  if(_loc25_ != null)
                  {
                     _loc12_.asset = _loc25_.content as BitmapData;
                     _loc12_.offsetX = -1 * _loc25_.offset.x - _loc5_ / 2 + _loc20_;
                     _loc12_.offsetY = -1 * _loc25_.offset.y + _loc21_;
                     _loc12_.relativeDepth = -0.01 - 0.1 * _loc15_ * _loc22_;
                     if(_loc16_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                     _loc15_++;
                  }
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_290 != param1.getUpdateID() || var_1189 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1524;
            if(isNaN(var_1524))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != var_1626 || param3)
            {
               var_1626 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_66.setDirectionAngle(AvatarSetType.const_38,_loc4_);
            }
            if(_loc5_ != var_1623 || param3)
            {
               var_1623 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               var_66.setDirectionAngle(AvatarSetType.const_46,_loc5_);
            }
            var_290 = param1.getUpdateID();
            var_1189 = param2.updateId;
            return true;
         }
         return false;
      }
   }
}
