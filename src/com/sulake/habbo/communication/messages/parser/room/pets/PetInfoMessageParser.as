package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1815:int;
      
      private var var_436:String;
      
      private var var_1788:int;
      
      private var var_1889:int;
      
      private var var_1816:int;
      
      private var var_2026:int;
      
      private var _nutrition:int;
      
      private var var_1203:int;
      
      private var var_2027:int;
      
      private var var_2025:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1802:int;
      
      private var var_2028:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1788;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2026;
      }
      
      public function flush() : Boolean
      {
         var_1203 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2027;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2025;
      }
      
      public function get maxNutrition() : int
      {
         return var_2028;
      }
      
      public function get figure() : String
      {
         return var_436;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1889;
      }
      
      public function get petId() : int
      {
         return var_1203;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1203 = param1.readInteger();
         _name = param1.readString();
         var_1788 = param1.readInteger();
         var_2027 = param1.readInteger();
         var_1816 = param1.readInteger();
         var_2025 = param1.readInteger();
         _energy = param1.readInteger();
         var_2026 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2028 = param1.readInteger();
         var_436 = param1.readString();
         var_1889 = param1.readInteger();
         var_1802 = param1.readInteger();
         var_1815 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1816;
      }
      
      public function get ownerId() : int
      {
         return var_1802;
      }
      
      public function get age() : int
      {
         return var_1815;
      }
   }
}
