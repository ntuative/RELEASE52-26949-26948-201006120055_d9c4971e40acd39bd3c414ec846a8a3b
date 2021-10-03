package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class TextSearchInputs
   {
       
      
      private var var_2455:IButtonWindow;
      
      private var var_716:TextFieldManager;
      
      private var _navigator:HabboNavigator;
      
      private var var_2387:Boolean;
      
      public function TextSearchInputs(param1:HabboNavigator, param2:Boolean, param3:IWindowContainer)
      {
         super();
         _navigator = param1;
         var_2387 = param2;
         var_716 = new TextFieldManager(_navigator,ITextFieldWindow(param3.findChildByName("search_str")),25,searchRooms,_navigator.getText("navigator.search.info"));
         Util.setProc(param3,"search_but",onSearchButtonClick);
      }
      
      public function get searchStr() : TextFieldManager
      {
         return var_716;
      }
      
      private function onSearchButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         searchRooms();
      }
      
      private function searchRooms() : void
      {
         var _loc1_:String = var_716.getText();
         if(_loc1_ == "")
         {
            return;
         }
         _navigator.mainViewCtrl.startSearch(Tabs.const_220,Tabs.const_206,_loc1_);
      }
   }
}
