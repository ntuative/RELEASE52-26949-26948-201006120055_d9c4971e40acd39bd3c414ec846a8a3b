package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_273:String = "WE_CHILD_RESIZED";
      
      public static const const_1396:String = "WE_CLOSE";
      
      public static const const_1328:String = "WE_DESTROY";
      
      public static const const_123:String = "WE_CHANGE";
      
      public static const const_1335:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1549:String = "WE_PARENT_RESIZE";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1212:String = "WE_MAXIMIZE";
      
      public static const const_391:String = "WE_DESTROYED";
      
      public static const const_1018:String = "WE_UNSELECT";
      
      public static const const_1298:String = "WE_MAXIMIZED";
      
      public static const const_1520:String = "WE_UNLOCKED";
      
      public static const const_412:String = "WE_CHILD_REMOVED";
      
      public static const const_187:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1245:String = "WE_ACTIVATE";
      
      public static const const_260:String = "WE_ENABLED";
      
      public static const const_383:String = "WE_CHILD_RELOCATED";
      
      public static const const_1195:String = "WE_CREATE";
      
      public static const const_567:String = "WE_SELECT";
      
      public static const const_177:String = "";
      
      public static const const_1570:String = "WE_LOCKED";
      
      public static const const_1519:String = "WE_PARENT_RELOCATE";
      
      public static const const_1557:String = "WE_CHILD_REMOVE";
      
      public static const const_1588:String = "WE_CHILD_RELOCATE";
      
      public static const const_1647:String = "WE_LOCK";
      
      public static const const_207:String = "WE_FOCUSED";
      
      public static const const_726:String = "WE_UNSELECTED";
      
      public static const const_882:String = "WE_DEACTIVATED";
      
      public static const const_1399:String = "WE_MINIMIZED";
      
      public static const const_1504:String = "WE_ARRANGED";
      
      public static const const_1550:String = "WE_UNLOCK";
      
      public static const const_1599:String = "WE_ATTACH";
      
      public static const const_1337:String = "WE_OPEN";
      
      public static const const_1334:String = "WE_RESTORE";
      
      public static const const_1493:String = "WE_PARENT_RELOCATED";
      
      public static const const_1175:String = "WE_RELOCATE";
      
      public static const const_1637:String = "WE_CHILD_RESIZE";
      
      public static const const_1477:String = "WE_ARRANGE";
      
      public static const const_1239:String = "WE_OPENED";
      
      public static const const_1419:String = "WE_CLOSED";
      
      public static const const_1526:String = "WE_DETACHED";
      
      public static const const_1486:String = "WE_UPDATED";
      
      public static const const_1288:String = "WE_UNFOCUSED";
      
      public static const const_480:String = "WE_RELOCATED";
      
      public static const const_1321:String = "WE_DEACTIVATE";
      
      public static const const_222:String = "WE_DISABLED";
      
      public static const const_743:String = "WE_CANCEL";
      
      public static const const_604:String = "WE_ENABLE";
      
      public static const const_1242:String = "WE_ACTIVATED";
      
      public static const const_1343:String = "WE_FOCUS";
      
      public static const const_1567:String = "WE_DETACH";
      
      public static const const_1398:String = "WE_RESTORED";
      
      public static const const_1187:String = "WE_UNFOCUS";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_1373:String = "WE_PARENT_RESIZED";
      
      public static const const_1235:String = "WE_CREATED";
      
      public static const const_1582:String = "WE_ATTACHED";
      
      public static const const_1206:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1674:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1443:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1674 = param3;
         var_1443 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1443;
      }
      
      public function get related() : IWindow
      {
         return var_1674;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1443 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
