package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_866:String = "price_type_none";
      
      public static const const_484:String = "pricing_model_multi";
      
      public static const const_342:String = "price_type_credits";
      
      public static const const_485:String = "price_type_credits_and_pixels";
      
      public static const const_447:String = "pricing_model_bundle";
      
      public static const const_488:String = "pricing_model_single";
      
      public static const const_562:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1208:String = "pricing_model_unknown";
      
      public static const const_420:String = "price_type_pixels";
       
      
      private var var_1832:int;
      
      private var var_839:int;
      
      private var _offerId:int;
      
      private var var_838:int;
      
      private var var_407:String;
      
      private var var_588:String;
      
      private var var_443:ICatalogPage;
      
      private var var_406:IProductContainer;
      
      private var var_1228:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1228 = param1.localizationId;
         var_839 = param1.priceInCredits;
         var_838 = param1.priceInPixels;
         var_443 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_407;
      }
      
      public function get page() : ICatalogPage
      {
         return var_443;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1832 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_406;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_838;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1228 = "";
         var_839 = 0;
         var_838 = 0;
         var_443 = null;
         if(var_406 != null)
         {
            var_406.dispose();
            var_406 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1832;
      }
      
      public function get priceInCredits() : int
      {
         return var_839;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_407 = const_488;
            }
            else
            {
               var_407 = const_484;
            }
         }
         else if(param1.length > 1)
         {
            var_407 = const_447;
         }
         else
         {
            var_407 = const_1208;
         }
      }
      
      public function get priceType() : String
      {
         return var_588;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_407)
         {
            case const_488:
               var_406 = new SingleProductContainer(this,param1);
               break;
            case const_484:
               var_406 = new MultiProductContainer(this,param1);
               break;
            case const_447:
               var_406 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_407);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1228;
      }
      
      private function analyzePriceType() : void
      {
         if(var_839 > 0 && var_838 > 0)
         {
            var_588 = const_485;
         }
         else if(var_839 > 0)
         {
            var_588 = const_342;
         }
         else if(var_838 > 0)
         {
            var_588 = const_420;
         }
         else
         {
            var_588 = const_866;
         }
      }
   }
}
