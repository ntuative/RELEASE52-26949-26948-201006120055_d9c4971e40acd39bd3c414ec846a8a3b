package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_836:Array;
      
      private var var_839:int;
      
      private var var_1228:String;
      
      private var _offerId:int;
      
      private var var_838:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1228 = param1.readString();
         var_839 = param1.readInteger();
         var_838 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_836 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_836.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_836;
      }
      
      public function get priceInCredits() : int
      {
         return var_839;
      }
      
      public function get localizationId() : String
      {
         return var_1228;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_838;
      }
   }
}
