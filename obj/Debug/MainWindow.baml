   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   F BFileRenamer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:FileRenamerFileRenamer 6?      FileRenamer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   9System&clr-namespace:System;assembly=mscorlib     5   	   +localclr-namespace:FileRenamer     6?     � Title$  File Renamer��5   	   $	��600��6   $	��800��6+   
�������$	��800��6N   $	��800��6]    � 	Resources 5         MyTextBlockStyle �� 
TargetType �� Property �� Value  MenuBackground �� Color��%K  &	        &	     �� 5   
   " ��6)   .�5      ��  � ��$ 5q�6'   �� 5	       � ��$ NoWrap=�6-   �� 5
       � ��$
 None=�6-   �� 5       � ��$ 16(�6)   �� 5       �@��TextAlignment$ Right=�6.   �� 5       � ��$
 Bold"�6+   5      �� 5   
   $ 	#FF212121��61   5      .��5      � $��0q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   o� $	��Top=�6   $��0��6'   ���	#FF8F8F8F#���  6K   .@�5      m� $��Center=�6   $��Center=�64   $
��File��6O   
�������.@�5      m� -   5        $��Reset��5      
���   �6=   m� 5      -   5        $��Close��5      
���   �6=   5      m� 5      -   5        $��About��5      $��Right=�6&   $��Center=�6B   
�������6p   5      � 5   
   $��1��6    5      �� 5      �� 5       �� 5!      �� 5"      �� 5#      �� 5$      $��5* �6    �� 5%       � ColumnDefinitions 5'      �� 5(      $	��23* �6#   �� 5)      $
��135* �6#   �� 5*      $
��475* �6#   �� 5+      $
��159* �6#   .+�5-      �� $��0��6   $��Folder Location��6%   #���   6<   $��2��6g   �� 5.      -   5         ��Name$ TxtFolderLocation��5.      $��0��61   $��2��6>   $��5q�6N   $��16(�6Y   �� 5/      -   5        	 ��Name$	 BtnFindFolder��5/      $��0��6-   $��3��6:   $��5q�6J   $��Find Folder��6U   $��16(�6k   $
��Bold"�6y   6�   �� 50      $��1��6   $��0��6%   $��Excluded File Types��65   #���   6P   $��2��6{   �� 51      -   5        $ TxtExcludedFiles��51      $��1��60   $��2��6=   $��5q�6M   $��16(�6X   �� 52      $��1��6   $��3��6%   $��	5,11,5,10q�65   $��9(�6H   $��.csv,.xml, .txt��6U   $��Center=�6n   �� 53      $��2��6   $��0��6%   $��New File Name��65   #���   6J   $��2��6u   �� 54      -   5        $ TxtNewFileName��54      $��2��6.   $��2��6;   $��5q�6K   $��16(�6V   �� 55      $��2��6   $��3��6%   $��	5,11,5,10q�65   $��9(�6H   $$��{S} for Season {E} for Episode��6U   $��Center=�6}   �� 56      $��3��6   $��0��6%   $��New Folder Name��65   #���   6L   $��2��6w   �� 57      -   5        $ TxtNewFolderName��57      $��3��60   $��2��6=   $��5q�6M   $��16(�6X   �� 58      $��4��6   $��4��6%   $��0��69   &   System.Windows.Controls.DataGrid  59      -	   5        
  Name$
 DataGridFileList��59      $��5��61   $��4��6>   $��0��6R   $��5q�6b      AutoGenerateColumns .  $	��350��6�      Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn   Header$ 	File Name��6E   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *	OldName+6E     5<      $ Season��6D    6)   �� *Season+6D     5=      $ Episode��6E    6)   �� *	Episode+6E     5>      $ 	Extension��6G    6)   �� *	Extension+6G   5@      �� 5A      -
   5        $	 BtnRenameFiles��5A      $��Rename Files��6.   $��6��6E   $��16(�6R   $��4��6`   $��0��6t   $��5q�5B      $
��Bold"�6   6*   5C      5D      5F      