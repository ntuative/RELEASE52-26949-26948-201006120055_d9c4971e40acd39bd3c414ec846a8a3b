package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2297:int;
      
      private var var_2296:String;
      
      private var var_1543:IActionDefinition;
      
      private var var_2294:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2293:String;
      
      private var var_2298:String;
      
      private var var_1759:Boolean;
      
      private var var_2295:ColorTransform;
      
      private var var_1694:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2296 = param1;
         var_2293 = param2;
         var_2297 = param3;
         _color = param4;
         _frames = param5;
         var_1543 = param6;
         var_1759 = param7;
         var_1694 = param8;
         var_2298 = param9;
         var_2294 = param10;
         var_2295 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1759;
      }
      
      public function get partType() : String
      {
         return var_2293;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1694;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2294;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2297;
      }
      
      public function get flippedPartType() : String
      {
         return var_2298;
      }
      
      public function get bodyPartId() : String
      {
         return var_2296;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1543;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2295;
      }
   }
}
