package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_704:IAssetLoader;
      
      private var var_1271:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1271 = param1;
         var_704 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_704;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_704 != null)
            {
               if(true)
               {
                  var_704.dispose();
                  var_704 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1271;
      }
   }
}
