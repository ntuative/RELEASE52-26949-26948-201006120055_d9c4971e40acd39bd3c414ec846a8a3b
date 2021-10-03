package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
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
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization
   {
      
      private static const const_809:int = 2;
      
      private static const const_1120:Array = [0,0,0];
       
      
      private var var_774:int = 0;
      
      private var var_436:String;
      
      private var var_1840:int = 0;
      
      private const const_1449:int = 1;
      
      private var var_445:String = "";
      
      private var var_723:int = 0;
      
      private var var_1233:int = 0;
      
      private var var_1887:Boolean = false;
      
      private var var_413:Boolean;
      
      private const const_1119:int = 3;
      
      private var var_1121:int = 0;
      
      private var var_1625:int = 0;
      
      private var var_66:IAvatarImage = null;
      
      private var var_1909:Boolean = false;
      
      private var var_469:Boolean = false;
      
      private var var_1523:String = "";
      
      private var var_2229:Boolean = false;
      
      private var var_724:int = 0;
      
      private const const_1716:int = 3;
      
      private var var_1189:int = -1;
      
      private var var_1623:int = -1;
      
      private var var_1398:Boolean = false;
      
      private var var_2388:Array;
      
      private const const_1161:int = 0;
      
      private var var_1626:int = -1;
      
      private var var_1524:int = -1;
      
      private var var_1120:int = 0;
      
      private var var_1624:int = 0;
      
      private var var_631:String;
      
      private var var_940:Boolean = false;
      
      private var var_1397:Boolean = false;
      
      private var _speakBubbleAsset:BitmapDataAsset;
      
      private const const_1467:int = 2;
      
      private var var_775:AvatarVisualizationData = null;
      
      private var var_322:BitmapDataAsset;
      
      private var var_502:Map;
      
      public function AvatarVisualization()
      {
         var_2388 = new Array();
         super();
         var_502 = new Map();
         var_413 = false;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var_775 = param1 as AvatarVisualizationData;
         createSprites(const_1119);
         return true;
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            var_1397 = false;
         }
         if(var_445 == "sit" || var_445 == "lay")
         {
            var_1121 = param1 / 2;
         }
         else
         {
            var_1121 = 0;
         }
         var_1398 = false;
         var_940 = false;
         if(var_445 == "lay")
         {
            var_940 = true;
            _loc2_ = int(var_1523);
            if(_loc2_ < 0)
            {
               var_1398 = true;
            }
         }
      }
      
      private function updateFigure(param1:String) : void
      {
         if(var_436 != param1)
         {
            var_436 = param1;
            resetImages();
         }
      }
      
      override public function dispose() : void
      {
         if(var_502 != null)
         {
            resetImages();
            var_502.dispose();
            var_502 = null;
         }
         var_775 = null;
         var_322 = null;
         _speakBubbleAsset = null;
         super.dispose();
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_166)
         {
            var_2229 = param1.getNumber(RoomObjectVariableEnum.const_248) > 0;
            var_1909 = param1.getNumber(RoomObjectVariableEnum.const_211) > 0;
            var_1887 = param1.getNumber(RoomObjectVariableEnum.const_441) > 0;
            var_1397 = param1.getNumber(RoomObjectVariableEnum.const_696) > 0;
            var_469 = param1.getNumber(RoomObjectVariableEnum.const_981) > 0;
            var_1233 = param1.getNumber(RoomObjectVariableEnum.const_272);
            var_445 = param1.getString(RoomObjectVariableEnum.const_416);
            var_1523 = param1.getString(RoomObjectVariableEnum.const_713);
            var_1624 = param1.getNumber(RoomObjectVariableEnum.const_828);
            var_1625 = param1.getNumber(RoomObjectVariableEnum.AVATAR_EFFECT);
            var_1120 = param1.getNumber(RoomObjectVariableEnum.const_403);
            var_774 = param1.getNumber(RoomObjectVariableEnum.const_309);
            var_1524 = param1.getNumber(RoomObjectVariableEnum.const_323);
            if(var_1120 > 0 && param1.getNumber(RoomObjectVariableEnum.const_309) > 0)
            {
               var_774 = var_1120;
            }
            else
            {
               var_774 = 0;
            }
            validateActions(param2);
            var_631 = param1.getString(RoomObjectVariableEnum.const_1039);
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_194);
            updateFigure(_loc3_);
            var_166 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_502)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_502.reset();
         var_66 = null;
         _loc2_ = getSprite(const_1161);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
         }
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(const_1449);
         var_322 = null;
         if(var_445 == "mv" || var_445 == "std")
         {
            _loc2_.visible = true;
            if(var_322 == null || param1 != var_149)
            {
               _loc3_ = 0;
               _loc4_ = 0;
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
               if(var_322 != null)
               {
                  _loc2_.asset = var_322.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            var_322 = null;
            _loc2_.visible = false;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_502.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = var_775.getAvatar(var_436,param1,var_631);
            if(_loc3_ != null)
            {
               var_502.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _speakBubbleAsset = null;
         var _loc2_:IRoomObjectSprite = getSprite(const_1467);
         if(var_469)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               _speakBubbleAsset = var_775.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               _speakBubbleAsset = var_775.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(var_445 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(var_445 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(_speakBubbleAsset != null)
            {
               _loc2_.asset = _speakBubbleAsset.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
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
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc9_ || _loc5_ != var_149 || var_66 == null)
         {
            if(_loc5_ != var_149)
            {
               _loc7_ = true;
               validateActions(_loc5_);
            }
            if(_loc7_ || var_66 == null)
            {
               var_66 = getAvatarImage(_loc5_);
               _loc6_ = true;
            }
            if(var_66 == null)
            {
               return;
            }
            updateShadow(_loc5_);
            updateTypingBubble(_loc5_);
            _loc8_ = updateObject(_loc3_,param1,true);
            updateActions(var_66);
            var_149 = _loc5_;
         }
         else
         {
            _loc8_ = updateObject(_loc3_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = var_413 || var_724 > 0;
         if(_loc10_)
         {
            var_724 = const_809;
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --var_724;
            --var_723;
            if(!(var_723 <= 0 || _loc7_ || _loc9_ || _loc6_))
            {
               return;
            }
            var_66.updateAnimationByFrames(1);
            var_723 = const_809;
            _loc13_ = var_66.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1120;
            }
            _loc12_ = getSprite(const_1161);
            if(_loc12_ != null)
            {
               _loc16_ = var_66.getImage(AvatarSetType.const_38,false);
               if(_loc16_ != null)
               {
                  _loc12_.asset = _loc16_;
               }
               if(_loc12_.asset)
               {
                  _loc12_.offsetX = -1 * _loc5_ / 2 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + _loc5_ / 4 + _loc13_[1] + var_1121;
               }
               if(var_940)
               {
                  if(var_1398)
                  {
                     _loc12_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc12_.relativeDepth = -0.409 + _loc13_[2];
                  }
               }
               else
               {
                  _loc12_.relativeDepth = -0.01 + _loc13_[2];
               }
            }
            _loc12_ = getSprite(const_1467);
            if(_loc12_ != null && _loc12_.visible)
            {
               if(!var_940)
               {
                  _loc12_.relativeDepth = -0.02 + _loc13_[2];
               }
               else
               {
                  _loc12_.relativeDepth = -0.44 + _loc13_[2];
               }
            }
            var_413 = var_66.isAnimating();
            _loc14_ = const_1119;
            for each(_loc15_ in var_66.getSprites())
            {
               if(_loc15_.id == "avatar")
               {
                  _loc12_ = getSprite(const_1161);
                  _loc17_ = var_66.getLayerData(_loc15_);
                  _loc18_ = _loc15_.getDirectionOffsetX(var_66.getDirection());
                  _loc19_ = _loc15_.getDirectionOffsetY(var_66.getDirection());
                  if(_loc17_ != null)
                  {
                     _loc18_ += _loc17_.dx;
                     _loc19_ += _loc17_.dy;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc18_ /= 2;
                     _loc19_ /= 2;
                  }
                  _loc12_.offsetX += _loc18_;
                  _loc12_.offsetY += _loc19_;
               }
               else
               {
                  _loc12_ = getSprite(_loc14_);
                  if(_loc12_ != null)
                  {
                     _loc12_.visible = true;
                     _loc20_ = var_66.getLayerData(_loc15_);
                     _loc21_ = 0;
                     _loc22_ = _loc15_.getDirectionOffsetX(var_66.getDirection());
                     _loc23_ = _loc15_.getDirectionOffsetY(var_66.getDirection());
                     _loc24_ = _loc15_.getDirectionOffsetZ(var_66.getDirection());
                     _loc25_ = 0;
                     if(_loc15_.hasDirections)
                     {
                        _loc25_ = var_66.getDirection();
                     }
                     if(_loc20_ != null)
                     {
                        _loc21_ = _loc20_.animationFrame;
                        _loc22_ += _loc20_.dx;
                        _loc23_ += _loc20_.dy;
                        _loc25_ += _loc20_.directionOffset;
                     }
                     if(_loc5_ < 48)
                     {
                        _loc22_ /= 2;
                        _loc23_ /= 2;
                     }
                     if(_loc25_ < 0)
                     {
                        _loc25_ += 8;
                     }
                     else if(_loc25_ > 7)
                     {
                        _loc25_ -= 8;
                     }
                     _loc26_ = var_66.getScale() + "_" + _loc15_.member + "_" + _loc25_ + "_" + _loc21_;
                     _loc27_ = var_66.getAsset(_loc26_);
                     if(_loc27_ == null)
                     {
                        continue;
                     }
                     _loc12_.asset = _loc27_.content as BitmapData;
                     _loc12_.offsetX = -_loc27_.offset.x - _loc5_ / 2 + _loc22_;
                     _loc12_.offsetY = -_loc27_.offset.y + _loc23_ + var_1121;
                     if(var_940)
                     {
                        _loc12_.relativeDepth = -0.409 - 0.1 * spriteCount * _loc24_;
                     }
                     else
                     {
                        _loc12_.relativeDepth = -0.01 - 0.1 * spriteCount * _loc24_;
                     }
                     if(_loc15_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc14_++;
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
            if(var_445 == "float")
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
            }
            _loc5_ = (_loc5_ % 360 + 360) % 360;
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
               if(var_1623 != var_1626)
               {
                  _loc5_ -= 112.5;
                  _loc5_ = (_loc5_ + 360) % 360;
                  var_66.setDirectionAngle(AvatarSetType.const_46,_loc5_);
               }
            }
            var_290 = param1.getUpdateID();
            var_1189 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_436,var_445,var_1523);
         if(var_1233 > 0)
         {
            param1.appendAction(AvatarAction.const_262,AvatarAction.const_1177[var_1233]);
         }
         if(var_1624 > 0)
         {
            param1.appendAction(AvatarAction.const_831,var_1624);
         }
         if(var_1840 > 0)
         {
            param1.appendAction(AvatarAction.const_1047,var_1840);
         }
         if(var_1120 > 0)
         {
            param1.appendAction(AvatarAction.const_992,var_1120);
         }
         if(var_774 > 0)
         {
            param1.appendAction(AvatarAction.const_880,var_774);
         }
         if(var_2229)
         {
            param1.appendAction(AvatarAction.const_263);
         }
         if(var_1887 || var_1397)
         {
            param1.appendAction(AvatarAction.const_397);
         }
         if(var_1909)
         {
            param1.appendAction(AvatarAction.const_290);
         }
         if(var_1625 > 0)
         {
            param1.appendAction(AvatarAction.const_398,var_1625);
         }
         param1.endActionAppends();
         var_413 = param1.isAnimating();
         var _loc2_:int = const_1119;
         for each(_loc3_ in var_66.getSprites())
         {
            if(_loc3_.id != "avatarImage")
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
   }
}
