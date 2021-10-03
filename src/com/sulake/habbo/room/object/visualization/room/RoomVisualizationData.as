package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_422:FloorRasterizer;
      
      private var var_807:Boolean = false;
      
      private var var_609:PlaneMaskManager;
      
      private var var_423:WallRasterizer;
      
      private var var_608:WallAdRasterizer;
      
      private var var_424:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_423 = new WallRasterizer();
         var_422 = new FloorRasterizer();
         var_608 = new WallAdRasterizer();
         var_424 = new LandscapeRasterizer();
         var_609 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_423;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_608;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_422;
      }
      
      public function get initialized() : Boolean
      {
         return var_807;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_609;
      }
      
      public function dispose() : void
      {
         if(var_423 != null)
         {
            var_423.dispose();
            var_423 = null;
         }
         if(var_422 != null)
         {
            var_422.dispose();
            var_422 = null;
         }
         if(var_608 != null)
         {
            var_608.dispose();
            var_608 = null;
         }
         if(var_424 != null)
         {
            var_424.dispose();
            var_424 = null;
         }
         if(var_609 != null)
         {
            var_609.dispose();
            var_609 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_423.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_422.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_608.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_424.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_609.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_423 != null)
         {
            var_423.clearCache();
         }
         if(var_422 != null)
         {
            var_422.clearCache();
         }
         if(var_424 != null)
         {
            var_424.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_424;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_807)
         {
            return;
         }
         var_423.initializeAssetCollection(param1);
         var_422.initializeAssetCollection(param1);
         var_608.initializeAssetCollection(param1);
         var_424.initializeAssetCollection(param1);
         var_609.initializeAssetCollection(param1);
         var_807 = true;
      }
   }
}
