   M S B A M L   `   `   `  ����@  <Vasut, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:VasutVasut  5   	       Vasut.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Vasut     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5      ]� .+�5   
   o� -   5         o�Name$ mainMenu��5      $	��Top=�6"   ��5      �� 5      .R�5      ]� 
�������$	��Top=�63   5      .@�5      m� -   5         m�Name$
 file��5   %   $
��File��6   $��50��63   $
��Left=�6>   .@�5      m� -   5        $ btNew��5   (   $	��New��6   67   m� 5      -   5        $
 open��5   )   $
��Open��6   6)   m� 5      -   5        $ miSave��5   )   $
��Save��6   69   5      m� 5      -   5        $
 edit��5   %   $
��Edit��6   $��50��63   $
��Left=�6>   .@�5      m� -   5        $
 find��5   )   $
��Find��6   5      5      5      `� 5   
   $	��Top=�6   .�5      c� .@�5      ]� $	��Top=�6   �� 5       -	   5         ��Name$ delete��5       .��6)   Delete61   �� 5!      -
   5        $ dataShow��5!      .��6B   	Show data6M   5"      5#      �� 5$   
   &   System.Windows.Controls.DataGrid  5%   
   -   5          Name$ 	DGColumns��5%      $	��523��6&   5&      �� 5'   
   -   5         ��Name$ lbLog��5'      $��Label��6   $	��231��6/    J� RenderTransformOrigin$ 0.517,0.498&�6;   $	��163��6_   5(      5*      