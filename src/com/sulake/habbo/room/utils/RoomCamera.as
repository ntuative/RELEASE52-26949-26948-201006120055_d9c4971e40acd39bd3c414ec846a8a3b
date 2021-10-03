package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_366:Number = 0.5;
      
      private static const const_780:int = 3;
      
      private static const const_1080:Number = 1;
       
      
      private var var_1852:Boolean = false;
      
      private var var_1851:Boolean = false;
      
      private var var_1042:int = 0;
      
      private var var_263:Vector3d = null;
      
      private var var_1846:int = 0;
      
      private var var_1854:int = 0;
      
      private var var_1847:Boolean = false;
      
      private var var_1849:int = -2;
      
      private var var_1855:Boolean = false;
      
      private var var_1850:int = 0;
      
      private var var_1853:int = -1;
      
      private var var_412:Vector3d = null;
      
      private var var_1848:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1846;
      }
      
      public function get targetId() : int
      {
         return var_1853;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1850 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1846 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1852 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1853 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1851 = param1;
      }
      
      public function dispose() : void
      {
         var_412 = null;
         var_263 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_412 == null)
         {
            var_412 = new Vector3d();
         }
         var_412.assign(param1);
         var_1042 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1849;
      }
      
      public function get screenHt() : int
      {
         return var_1848;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1854 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_263;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1848 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1850;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1852;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1851;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_412 != null && var_263 != null)
         {
            ++var_1042;
            _loc2_ = Vector3d.dif(var_412,var_263);
            if(_loc2_.length <= const_366)
            {
               var_263 = var_412;
               var_412 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_366 * (const_780 + 1))
               {
                  _loc2_.mul(const_366);
               }
               else if(var_1042 <= const_780)
               {
                  _loc2_.mul(const_366);
               }
               else
               {
                  _loc2_.mul(const_1080);
               }
               var_263 = Vector3d.sum(var_263,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1847 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1854;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1855 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1849 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_263 != null)
         {
            return;
         }
         var_263 = new Vector3d();
         var_263.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1847;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1855;
      }
   }
}
