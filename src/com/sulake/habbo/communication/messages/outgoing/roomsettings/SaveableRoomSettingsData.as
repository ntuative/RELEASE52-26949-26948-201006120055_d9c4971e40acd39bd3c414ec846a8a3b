package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var var_1776:Boolean;
      
      private var var_1778:Boolean;
      
      private var var_1774:Array;
      
      private var var_1771:Boolean;
      
      private var var_1400:String;
      
      private var var_1777:int;
      
      private var var_1775:Boolean;
      
      private var var_1779:int;
      
      private var var_1255:int;
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var _password:String;
      
      private var var_668:Array;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1778 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1777;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_1775 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_668;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1771;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1774 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_668 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1776;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1778;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function get categoryId() : int
      {
         return var_1255;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1771 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_1775;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1774;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1779 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1776 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1779;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1255 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1400 = param1;
      }
      
      public function get description() : String
      {
         return var_1400;
      }
   }
}
