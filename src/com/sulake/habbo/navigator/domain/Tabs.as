package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_599:int = 6;
      
      public static const const_240:int = 5;
      
      public static const const_659:int = 2;
      
      public static const const_346:int = 9;
      
      public static const const_351:int = 4;
      
      public static const const_259:int = 2;
      
      public static const const_542:int = 4;
      
      public static const const_206:int = 8;
      
      public static const const_698:int = 7;
      
      public static const const_296:int = 3;
      
      public static const const_303:int = 1;
      
      public static const const_220:int = 5;
      
      public static const const_476:int = 12;
      
      public static const const_330:int = 1;
      
      public static const const_645:int = 11;
      
      public static const const_577:int = 3;
      
      public static const const_1666:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_394:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_394 = new Array();
         var_394.push(new Tab(_navigator,const_303,const_476,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_500));
         var_394.push(new Tab(_navigator,const_259,const_330,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_500));
         var_394.push(new Tab(_navigator,const_351,const_645,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_957));
         var_394.push(new Tab(_navigator,const_296,const_240,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_500));
         var_394.push(new Tab(_navigator,const_220,const_206,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_717));
         setSelectedTab(const_303);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_394)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_351;
      }
      
      public function get tabs() : Array
      {
         return var_394;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
