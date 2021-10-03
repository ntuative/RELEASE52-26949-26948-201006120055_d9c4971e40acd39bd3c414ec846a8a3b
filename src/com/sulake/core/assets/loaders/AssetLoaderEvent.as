package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_861:String = "AssetLoaderEventUnload";
      
      public static const const_50:String = "AssetLoaderEventError";
      
      public static const const_925:String = "AssetLoaderEventOpen";
      
      public static const const_845:String = "AssetLoaderEventProgress";
      
      public static const const_841:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_153:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_153 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_153;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_153);
      }
   }
}
