   M S B A M L   `   `   `  ����C  ?StackApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:StackApp.ViewModelsStackApp.ViewModels  5   	       StackApp.Views.MainWindow   5   	   W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   0vm!clr-namespace:StackApp.ViewModels     5   	     � Title$  Стек��5   	   $	��250��6   $	��400��6#    � DataContext 5      '   !StackApp.ViewModels.MainViewModel  5   
   .��5
      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��0��6   $��Элемент:��6-   �� 5   
   $��0��6   $��1��6   $��5q�6/   ��6:   �� *	InputItem+�� 5   
   $��0��6   $��2��6   $��Добавить��6.   $��5q�6a   $
��20,2q�6l   ��6A   �� *PushCommand+6l   �� 5   
   $��1��6   $��0��6   $��Вершина:��6-   �� 5   
   $��1��6   $��1��6!   $��5q�61   ��6<   �� *CurrentItem+�� 5"   
   $��2��6   $��0��6   $��Количество:��6-   �� 5#   
   $��2��6   $��1��6!   $��5q�61   ��6<   �� *Count+�� 5&   
   $��3��6   $��0��6   $��	Пуст:��6-   �� 5'   
   $��3��6   $��1��6!   $��5q�61   ��6<   �� *	IsEmpty+�� 5*   
   $��4��6   $��3��6"    �� Orientation$ 
Horizontal=�66   $��Center=�6O   .+�5+      �� $��Извлечь��6   $��5q�6F   $
��20,2q�6Q   ��6'   �� *
PopCommand+6Q   �� 5,      $��Очистить��6   $��5q�6I   $
��20,2q�6T   ��6(   �� *ClearCommand+6T   5-      5.      5/      