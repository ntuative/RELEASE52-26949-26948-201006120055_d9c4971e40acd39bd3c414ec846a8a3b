package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1788:int;
      
      private var var_1889:int;
      
      private var var_1816:int;
      
      private var var_1818:int;
      
      private var _nutrition:int;
      
      private var var_1203:int;
      
      private var var_1819:int;
      
      private var var_1817:int;
      
      private var _energy:int;
      
      private var var_1815:int;
      
      private var var_1820:int;
      
      private var _ownerName:String;
      
      private var var_1802:int;
      
      public function PetInfo()
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
      
      public function set respect(param1:int) : void
      {
         var_1889 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1788 = param1;
      }
      
      public function get petId() : int
      {
         return var_1203;
      }
      
      public function get experienceMax() : int
      {
         return var_1817;
      }
      
      public function get nutritionMax() : int
      {
         return var_1818;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1819 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1802;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1203 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1820;
      }
      
      public function get respect() : int
      {
         return var_1889;
      }
      
      public function get levelMax() : int
      {
         return var_1819;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1817 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1816 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1818 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function get experience() : int
      {
         return var_1816;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1820 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1815 = param1;
      }
      
      public function get age() : int
      {
         return var_1815;
      }
   }
}
