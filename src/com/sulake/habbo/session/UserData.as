package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_436:String = "";
      
      private var var_1683:String = "";
      
      private var var_1686:int = 0;
      
      private var var_1682:int = 0;
      
      private var _type:int = 0;
      
      private var var_1685:String = "";
      
      private var var_602:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1684:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1685 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_436 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_602 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1686;
      }
      
      public function set webID(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1685;
      }
      
      public function set custom(param1:String) : void
      {
         var_1683 = param1;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get sex() : String
      {
         return var_602;
      }
      
      public function get custom() : String
      {
         return var_1683;
      }
      
      public function get webID() : int
      {
         return var_1684;
      }
      
      public function set xp(param1:int) : void
      {
         var_1682 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1682;
      }
   }
}
