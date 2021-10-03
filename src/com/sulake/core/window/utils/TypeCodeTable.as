package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_710;
         param1["bitmap"] = const_536;
         param1["border"] = const_535;
         param1["border_notify"] = const_1392;
         param1["button"] = const_459;
         param1["button_thick"] = const_683;
         param1["button_icon"] = const_1322;
         param1["button_group_left"] = const_681;
         param1["button_group_center"] = const_559;
         param1["button_group_right"] = const_546;
         param1["canvas"] = const_635;
         param1["checkbox"] = const_627;
         param1["closebutton"] = const_910;
         param1["container"] = const_337;
         param1["container_button"] = const_707;
         param1["display_object_wrapper"] = const_674;
         param1["dropmenu"] = const_418;
         param1["dropmenu_item"] = const_400;
         param1["frame"] = const_328;
         param1["frame_notify"] = const_1412;
         param1["header"] = const_654;
         param1["icon"] = const_950;
         param1["itemgrid"] = const_979;
         param1["itemgrid_horizontal"] = const_442;
         param1["itemgrid_vertical"] = const_720;
         param1["itemlist"] = const_935;
         param1["itemlist_horizontal"] = const_327;
         param1["itemlist_vertical"] = const_307;
         param1["maximizebox"] = const_1389;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1265;
         param1["submenu"] = const_985;
         param1["minimizebox"] = const_1209;
         param1["notify"] = const_1425;
         param1["null"] = const_768;
         param1["password"] = const_671;
         param1["radiobutton"] = const_731;
         param1["region"] = const_468;
         param1["restorebox"] = const_1405;
         param1["scaler"] = const_628;
         param1["scaler_horizontal"] = const_1194;
         param1["scaler_vertical"] = const_1413;
         param1["scrollbar_horizontal"] = const_438;
         param1["scrollbar_vertical"] = const_737;
         param1["scrollbar_slider_button_up"] = const_881;
         param1["scrollbar_slider_button_down"] = const_833;
         param1["scrollbar_slider_button_left"] = const_1032;
         param1["scrollbar_slider_button_right"] = const_862;
         param1["scrollbar_slider_bar_horizontal"] = const_1026;
         param1["scrollbar_slider_bar_vertical"] = const_911;
         param1["scrollbar_slider_track_horizontal"] = const_998;
         param1["scrollbar_slider_track_vertical"] = const_1043;
         param1["scrollable_itemlist"] = const_1375;
         param1["scrollable_itemlist_vertical"] = const_464;
         param1["scrollable_itemlist_horizontal"] = const_991;
         param1["selector"] = const_682;
         param1["selector_list"] = const_622;
         param1["submenu"] = const_985;
         param1["tab_button"] = const_537;
         param1["tab_container_button"] = const_975;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_875;
         param1["tab_selector"] = const_594;
         param1["text"] = const_591;
         param1["input"] = const_533;
         param1["toolbar"] = const_1390;
         param1["tooltip"] = const_348;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
