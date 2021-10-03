package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1526:int;
      
      private var var_1525:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1526;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1526 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1526 = this.var_1526;
         _loc1_.var_1525 = this.var_1525;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1525 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1525;
      }
   }
}
