   M S B A M L   `   `   `  ����!  WpfListViewDataVirtualization#    DataVirtualization.DemoWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        � Title$0  *Data Virtualization Demo - By Paul McClean��5      $	��600��68   $	��600��6E    � 	Resources 5         lvStyle �� 
TargetType �� Property �� Value �� Width �� CellTemplate �� Triggers �� Binding	 �� Value��%�  &	        �� 5   
   " ��6    .�5      ��  �@%�IsVirtualizing . 6F   �� 5	       �@%�VirtualizationMode$ 	Recycling=�6J   �� 5
      " �@��IsDeferredScrollingEnabled . 6H   �� 5       � �� 65   �� �� 5       �@��View 5      �� 5      .P�5      �� $��Id��6)   $	 100��65    5      �� 5   "   .R�5   &   �� ��60   �� *Id+5   #   5      �� 5      $
��Name��6)   $	 150��67    5      �� 5   "   .R�5   &   �� ��60   �� *Name+5   #   5      5      5       5       �� 5!       6   �� *	IsLoading+	 True6<   .a�5"      ��  �@�Cursor$
 Wait��68   �� 5#       � ��
 �����6<   5$      5&      5'      .��5)      � $��5q�6   
 � RowDefinitions
 5+   
   �� 5,      $
��Auto �6   �� 5-      $
��Auto �6   �� 5.      $
��Auto �6   �� 5/      $��* �6   .+�53   
   �� $��0��6   $��ItemsProvider��6    .��54      ��  �� Orientation$ 
Horizontal=�6   $��0,2,0,0q�62   .+�55      �� $��Number of items:��6   $��5q�64    �� TextAlignment$ Right=�6?   $��Center=�6U   �� 56      -   5         ��Name$ 
tbNumItems��56      $��5q�6.   $��1000000��69   $��60��6H   $��Center=�6S   �� 57      $��Fetch Delay (ms):��6   $��5q�65   $ Right=�6@   $��Center=�6V   �� 58      -   5        $ tbFetchDelay��58      $��5q�60   $
��1000��6;   $��60��6G   $��Center=�6R   59      5:      �� 5<   
   $��1��6   $��
Collection��6    .��5=      �� .+�5>      �� $ 
Horizontal=�6   $��0,2,0,0q�66   .+�5?      �� $��Type:��6    $��5q�6-   $ Right=�68   $��Center=�6N   	� 5@      -   5         	�Name$ rbNormal��5@   "    	� 	GroupName$ rbGroup��64   $��5q�6H   $��List(T)��6S   $��Center=�6e   	� 5A      -   5        $ rbVirtualizing��5A   "   $ rbGroup��6:   $��5q�6N   $��VirtualizingList(T)��6Y   $��Center=�6w   	� 5B      -   5        $ rbAsync��5B   "   $ rbGroup��63   $��5q�6G   $��AsyncVirtualizingList(T)��6R    d� 	IsChecked$
 TrueY�6u   $��Center=�6�   5C      �� 5D      $ 
Horizontal=�6   $��0,2,0,0q�66   .+�5E      �� $��
Page size:��6    $��5q�62   $ Right=�6=   $��Center=�6S   �� 5F      -   5        $ 
tbPageSize��5F      $��5q�62   $	��100��6=   $��60��6H   $��Center=�6S   �� 5G      $��Page timeout (s):��6    $��5q�69   $ Right=�6D   $��Center=�6Z   �� 5H      -   5        $ tbPageTimeout��5H      $��5q�65   $��30��6@   $��60��6J   $��Center=�6U   5I      5J      5K      �� 5M   
   $ 
Horizontal=�6   $��2��6.   .+�5N      �� $��Memory Usage:��6   $��5q�6-   $��Center=�68   �� 5O      -   5         ��Name$ tbMemory��5O      $��5q�6*   $��80��65   $��Center=�6@   �� 5Q      -	   5        $��Refresh��5Q      $��5q�6<   $	��100��6G   $��Center=�6S   �� 5S      -
   5        $��	rectangle��5S      $��20��6)   $��20��64   
����  �$��5q�6L   $��Center=�6W   z�5T      �� 5U       �� Angle$ 0Q�6&    �� CenterX$ 10Q�60    �� CenterY$ 10Q�6=    � Triggers 5W      :� 5X       :� RoutedEvent$ Rectangle.Loaded��6#   .[�5Y      �� .��5Z      �� .��5[   "   W�  �� 
TargetName$ 	rectangle��62    �� TargetProperty$9 3(TextBlock.RenderTransform).(RotateTransform.Angle)�6T    W� From$ 0X�6�   	 W� To$	 360X�6�    g� Duration$ 0:0:5D�6�    g� RepeatBehavior$ Forever��6�   5\      5]      5^      5`      �� 5b      $��5q�6   $��Center=�6#   $��Italic$�6>   $5��/Pause in animation indicates UI thread stalled.��6Q   5d      �� 5f   
   $��3��6   $��5q�6    #���   6+   5h      5i      