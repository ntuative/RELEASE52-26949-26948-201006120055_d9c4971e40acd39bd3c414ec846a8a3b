package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1542:String = "e";
      
      public static const const_1695:String = "i";
      
      public static const const_1627:String = "s";
       
      
      private var _id:int;
      
      private var var_2120:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2119:int;
      
      private var var_1237:Array;
      
      private var var_2118:int;
      
      private var var_2121:int;
      
      private var var_2117:int;
      
      private var _name:String;
      
      private var var_2122:int;
      
      private var var_1400:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2119 = param4;
         var_2122 = param5;
         var_2118 = param6;
         var_2121 = param7;
         var_2117 = param8;
         var_1237 = param9;
         _title = param10;
         var_1400 = param11;
         var_2120 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2121;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2117;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2120;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2122;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2119;
      }
      
      public function get tileSizeX() : int
      {
         return var_2118;
      }
      
      public function get colours() : Array
      {
         return var_1237;
      }
      
      public function get description() : String
      {
         return var_1400;
      }
   }
}
