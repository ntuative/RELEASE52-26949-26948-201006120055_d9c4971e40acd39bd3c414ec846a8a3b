package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_209:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_1033:String;
      
      private var var_1222:String;
      
      private var var_1221:int;
      
      private var var_1922:int;
      
      private var var_1034:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1222 = param1.readString();
         var_1922 = param1.readInteger();
         var_1033 = param1.readString();
         var_1034 = param1.readInteger();
         var_1221 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1034;
      }
      
      public function get productType() : String
      {
         return var_1222;
      }
      
      public function get expiration() : int
      {
         return var_1221;
      }
      
      public function get furniClassId() : int
      {
         return var_1922;
      }
      
      public function get extraParam() : String
      {
         return var_1033;
      }
   }
}
