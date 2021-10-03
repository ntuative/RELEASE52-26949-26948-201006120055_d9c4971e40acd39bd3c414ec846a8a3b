package com.sulake.core.assets.loaders
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class BitmapFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_986:LoaderContext;
      
      protected var var_664:String;
      
      protected var var_14:Loader;
      
      protected var _type:String;
      
      public function BitmapFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         var_664 = param2 == null ? "" : param2.url;
         _type = param1;
         var_14 = new Loader();
         var_986 = new LoaderContext();
         var_986.checkPolicyFile = true;
         var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,loadEventHandler);
         var_14.contentLoaderInfo.addEventListener(Event.UNLOAD,loadEventHandler);
         var_14.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         var_14.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         var_14.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null && param2.url != null)
         {
            var_14.load(param2,var_986);
         }
      }
      
      public function get content() : Object
      {
         return !!var_14 ? var_14.content : null;
      }
      
      public function get bytesLoaded() : uint
      {
         return !!var_14 ? uint(var_14.contentLoaderInfo.bytesLoaded) : uint(0);
      }
      
      public function get mimeType() : String
      {
         return _type;
      }
      
      public function get bytesTotal() : uint
      {
         return !!var_14 ? uint(var_14.contentLoaderInfo.bytesTotal) : uint(0);
      }
      
      public function get loaderContext() : LoaderContext
      {
         return var_986;
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadEventHandler);
            var_14.contentLoaderInfo.removeEventListener(Event.UNLOAD,loadEventHandler);
            var_14.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            var_14.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            var_14.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            try
            {
               var_14.close();
            }
            catch(e:*)
            {
            }
            var_14.unload();
            var_14 = null;
            _type = null;
            var_664 = null;
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         var_664 = param1.url;
         var_381 = 0;
         var_14.load(param1,var_986);
      }
      
      override protected function retry() : Boolean
      {
         if(!_disposed)
         {
            if(++var_381 < var_2423)
            {
               try
               {
                  var_14.close();
                  var_14.unload();
               }
               catch(e:Error)
               {
               }
               var_14.load(new URLRequest(var_664 + (var_664.indexOf("?") == -1 ? "?" : "&") + "retry=" + var_381),var_986);
               return true;
            }
         }
         return false;
      }
      
      public function get ready() : Boolean
      {
         return bytesTotal > 0 ? bytesTotal == bytesLoaded : false;
      }
      
      public function get url() : String
      {
         return var_664;
      }
   }
}
