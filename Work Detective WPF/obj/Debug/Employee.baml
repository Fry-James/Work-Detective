   M S B A M L   `   `   `  ����M  IWork Detective WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Work_Detective_WPFWork_Detective_WPF  5   	   !    Work_Detective_WPF.Employee   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:Work_Detective_WPF     5   	     � Title$  Сотрудники��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  $
��Left=�6   $	��260��6.   $��	10,10,0,0q�6;   $	��Top=�6N   $	��772��6f   $��3��6r   $��2��6�   �� 5   
   -   5        $+��%Добавить сотрудника��5      $
��Left=�6/   $��	10,17,0,0q�6J   $	��Top=�6]   $	��244��6u   $��22(�6�   $��2��6�   6�   �� 5   
   $+��%Изменить сотрудника��6   $
��Left=�6/   $��	10,17,0,0q�6J   $	��Top=�6]   $	��244��6u   $��22(�6�   $��1��6�   $��2��6�   �� 5   
   $)��#Удалить сотрудника��6   $
��Left=�6.   $��	10,17,0,0q�6I   $	��Top=�6\   $	��244��6t   $��22(�6�   $��2��6�   $��2��6�   �� 5   
   $%��Просмотр отчётов��6   $
��Left=�6,   $��
143,77,0,0q�6G   $	��Top=�6[   $	��244��6s   $��22(�6   $��2��6�   $��2��6�   �� 5   
   -   5        $+��%Просмотр должностей��5      $
��Left=�6/   $��
141,77,0,0q�6J   $	��Top=�6^   $	��244��6v   $��22(�6�   $��1��6�   $��2��6�   $��2��6�   6�   5      5      