package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_2188:int;
      
      private var var_2320:Boolean = false;
      
      private var var_2191:int;
      
      private var var_2189:int;
      
      private var var_2190:int;
      
      private var var_1339:String;
      
      private var var_1192:int;
      
      private var _offerId:int;
      
      private var var_2192:int;
      
      private var var_2193:Boolean;
      
      private var var_2194:Boolean;
      
      private var var_443:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1339 = param2;
         var_1192 = param3;
         var_2194 = param4;
         var_2193 = param5;
         var_2191 = param6;
         var_2190 = param7;
         var_2189 = param8;
         var_2188 = param9;
         var_2192 = param10;
      }
      
      public function get month() : int
      {
         return var_2188;
      }
      
      public function get page() : ICatalogPage
      {
         return var_443;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_2193;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_443 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_342;
      }
      
      public function get upgrade() : Boolean
      {
         return var_2194;
      }
      
      public function get localizationId() : String
      {
         return var_1339;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_2190;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2320;
      }
      
      public function get day() : int
      {
         return var_2192;
      }
      
      public function get year() : int
      {
         return var_2189;
      }
      
      public function get price() : int
      {
         return var_1192;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2320 = param1;
      }
      
      public function get periods() : int
      {
         return var_2191;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1192;
      }
      
      public function get productCode() : String
      {
         return var_1339;
      }
   }
}
