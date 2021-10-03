package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_832:LegacyWallGeometry = null;
      
      private var var_585:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_584:TileHeightMap = null;
      
      private var var_1805:String = null;
      
      private var _roomId:int = 0;
      
      private var var_586:SelectedRoomObjectData = null;
      
      private var var_833:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_832 = new LegacyWallGeometry();
         var_833 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_585 != null)
         {
            var_585.dispose();
         }
         var_585 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_584 != null)
         {
            var_584.dispose();
         }
         var_584 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1805 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_832;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_586;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_833;
      }
      
      public function dispose() : void
      {
         if(var_584 != null)
         {
            var_584.dispose();
            var_584 = null;
         }
         if(var_832 != null)
         {
            var_832.dispose();
            var_832 = null;
         }
         if(var_833 != null)
         {
            var_833.dispose();
            var_833 = null;
         }
         if(var_585 != null)
         {
            var_585.dispose();
            var_585 = null;
         }
         if(var_586 != null)
         {
            var_586.dispose();
            var_586 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_584;
      }
      
      public function get worldType() : String
      {
         return var_1805;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_586 != null)
         {
            var_586.dispose();
         }
         var_586 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_585;
      }
   }
}
