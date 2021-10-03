package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2409:uint;
      
      private var var_934:IWindowToolTipAgentService;
      
      private var var_932:IWindowMouseScalingService;
      
      private var var_219:IWindowContext;
      
      private var var_931:IWindowFocusManagerService;
      
      private var var_930:IWindowMouseListenerService;
      
      private var var_933:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2409 = 0;
         var_122 = param2;
         var_219 = param1;
         var_933 = new WindowMouseDragger(param2);
         var_932 = new WindowMouseScaler(param2);
         var_930 = new WindowMouseListener(param2);
         var_931 = new FocusManager(param2);
         var_934 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_932;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_931;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_934;
      }
      
      public function dispose() : void
      {
         if(var_933 != null)
         {
            var_933.dispose();
            var_933 = null;
         }
         if(var_932 != null)
         {
            var_932.dispose();
            var_932 = null;
         }
         if(var_930 != null)
         {
            var_930.dispose();
            var_930 = null;
         }
         if(var_931 != null)
         {
            var_931.dispose();
            var_931 = null;
         }
         if(var_934 != null)
         {
            var_934.dispose();
            var_934 = null;
         }
         var_219 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_930;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_933;
      }
   }
}
