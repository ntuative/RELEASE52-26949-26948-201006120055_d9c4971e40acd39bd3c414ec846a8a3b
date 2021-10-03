package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.avatar.pets.IPetDataManager;
   import com.sulake.habbo.avatar.structure.IFigureData;
   
   public interface IAvatarRenderManager extends IUnknown
   {
       
      
      function get assets() : IAssetLibrary;
      
      function getFigureData(param1:String) : IFigureData;
      
      function set mode(param1:String) : void;
      
      function createPetImageFromFigure(param1:String, param2:String, param3:IAvatarImageListener = null) : IAvatarImage;
      
      function createPetImage(param1:int, param2:int, param3:uint, param4:String, param5:IAvatarImageListener = null) : IAvatarImage;
      
      function get mode() : String;
      
      function get petDataManager() : IPetDataManager;
      
      function getAssetByName(param1:String) : IAsset;
      
      function createAvatarImage(param1:String, param2:String, param3:String = null) : IAvatarImage;
      
      function injectFigureData(param1:String, param2:XML) : void;
   }
}
