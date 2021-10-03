package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1403:String = "F";
      
      public static const const_1017:String = "M";
       
      
      private var var_85:Number = 0;
      
      private var var_436:String = "";
      
      private var var_1746:int = 0;
      
      private var var_1683:String = "";
      
      private var var_1686:int = 0;
      
      private var var_1682:int = 0;
      
      private var var_1685:String = "";
      
      private var var_602:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_235:int = 0;
      
      private var var_1747:String = "";
      
      private var _name:String = "";
      
      private var var_1684:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_235;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_235 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_194)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1746;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_194)
         {
            var_1686 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1747;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_194)
         {
            var_1685 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_194)
         {
            var_1747 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_194)
         {
            var_1682 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_194)
         {
            var_436 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_194)
         {
            var_1746 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_194)
         {
            var_602 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1686;
      }
      
      public function get groupID() : String
      {
         return var_1685;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_194)
         {
            var_1684 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_194)
         {
            var_1683 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get sex() : String
      {
         return var_602;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get webID() : int
      {
         return var_1684;
      }
      
      public function get custom() : String
      {
         return var_1683;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_85 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1682;
      }
   }
}
