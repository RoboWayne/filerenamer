   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  F BFileRenamer, Version=1.1.1.0, Culture=neutral, PublicKeyToken=null)clr-namespace:FileRenamerFileRenamer    FileRenamer.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     9System&clr-namespace:System;assembly=mscorlib     +localclr-namespace:FileRenamer       � Title$  File Renamer��$	��600��$	��800��
�������$	��800��$	��800�� � 	Resources    MyTextBlockStyle �� 
TargetType �� Property �� Value  MenuBackground �� Color��%�   &	        &	 �     �� " ��.���  � ��$ 5q���  � ��$ NoWrap=���  � ��$
 None=���  � ��$ 16(���  �@��TextAlignment$ Right=���  � ��$
 Bold"��� $ 	#FF212121��.��� $��0q� � RowDefinitions �� $
��Auto ��� $
��Auto �.+�o� $	��Top=�$��0�����	#FF8F8F8F#���  .@�m� $��Center=�$��Center=�$
��File��
�������.@�m� -   $��Reset��
���   �m� -   $��Close��
���   �m� -   $��About��$��Right=�$��Center=�
�������� $��1�� �� �� �� �� �� �� $��5* ���  � ColumnDefinitions �� $	��23* ��� $
��135* ��� $
��475* ��� $
��159* �.+��� $��0��$��Folder Location��#���   $��2���� -    ��Name$ TxtFolderLocation��$��0��$��2��$��5q�$��16(��� -   	 ��Name$	 BtnFindFolder��$��0��$��3��$��5q�$��Find Folder��$��16(�$
��Bold"��� $��1��$��0��$��Excluded File Types��#���   $��2���� -   $ TxtExcludedFiles��$��1��$��2��$��5q�$��16(��� $��1��$��3��$��	5,11,5,10q�$��9(�$��.csv,.xml, .txt��$��Center=��� $��2��$��0��$��New File Name��#���   $��2���� -   $ TxtNewFileName��$��2��$��2��$��5q�$��16(��� $��2��$��3��$��	5,11,5,10q�$��9(�$$��{S} for Season {E} for Episode��$��Center=��� $��3��$��0��$��New Folder Name��#���   $��2���� -   $ TxtNewFolderName��$��3��$��2��$��5q�$��16(��� $��4��$��4��$��0��&   System.Windows.Controls.DataGrid  -	   
  Name$
 DataGridFileList��$��5��$��4��$��0��$��5q�   AutoGenerateColumns .  $	��350��   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ 	File Name��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	OldName+  $ Season�� �� *Season+  $ Episode�� �� *	Episode+  $ 	Extension�� �� *	Extension+�� -
   $	 BtnRenameFiles��$��Rename Files��$��6��$��16(�$��4��$��0��$��5q�$
��Bold"�