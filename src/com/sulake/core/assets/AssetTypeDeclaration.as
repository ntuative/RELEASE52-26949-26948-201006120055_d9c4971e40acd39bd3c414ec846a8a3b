package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1706:Class;
      
      private var var_1704:Class;
      
      private var var_1705:String;
      
      private var var_1171:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1705 = param1;
         var_1704 = param2;
         var_1706 = param3;
         if(rest == null)
         {
            var_1171 = new Array();
         }
         else
         {
            var_1171 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1706;
      }
      
      public function get assetClass() : Class
      {
         return var_1704;
      }
      
      public function get mimeType() : String
      {
         return var_1705;
      }
      
      public function get fileTypes() : Array
      {
         return var_1171;
      }
   }
}
