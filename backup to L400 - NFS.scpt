FasdUAS 1.101.10   ��   ��    l   6 ����  t    6    O   5    k   4 	 	  
  
 l   ��������  ��  ��        r    	    m       �       o      ���� 0 usernametemp userNameTemp      r   
     m   
    �       o      ���� 0 passwordtemp passwordTemp      r        m       �    1 9 2 . 1 6 8 . 1 . 2 0 0  o      ���� 0 nfsserverip nfsServerIP      r       !   m     " " � # # * V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 ! o      ���� 0 	nfsserver 	nfsServer   $ % $ l   ��������  ��  ��   %  & ' & Q   2 ( )�� ( k   ) * *  + , + Z   ' - . /�� - l   ! 0���� 0 I   !�� 1��
�� .coredoexbool        obj  1 4    �� 2
�� 
cdis 2 m     3 3 � 4 4  b a c k u p��  ��  ��   . k   $ � 5 5  6 7 6 I  $ 7�� 8 9
�� .sysodlogaskr        TEXT 8 b   $ ' : ; : m   $ % < < � = = 6 B a c k u p   m o u n t   a l r e a d y   e x i s t s ; o   % &��
�� 
ret  9 �� > ?
�� 
btns > J   ( - @ @  A�� A m   ( + B B � C C  O K��   ? �� D��
�� 
dflt D m   0 1���� ��   7  E F E l  8 8��������  ��  ��   F  G H G r   8 C I J I I  8 ?�� K��
�� .sysoexecTEXT���     TEXT K m   8 ; L L � M M b d u   - s k h   / U s e r s / $ U S E R / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } '��   J o      ���� 40 foldersizedocumentshuman folderSizeDocumentsHuman H  N O N r   D O P Q P I  D K�� R��
�� .sysoexecTEXT���     TEXT R m   D G S S � T T Z d u   - s k h   / U s e r s / $ U S E R / M u s i c   |   a w k   ' { p r i n t   $ 1 } '��   Q o      ���� ,0 foldersizemusichuman folderSizeMusicHuman O  U V U l  P P�� W X��   W | vset folderSizeNfsDocumentsHuman to do shell script "du -skh /Volumes/192.168.1.200/james/Documents | awk '{print $1}'"    X � Y Y � s e t   f o l d e r S i z e N f s D o c u m e n t s H u m a n   t o   d o   s h e l l   s c r i p t   " d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } ' " V  Z [ Z l  P P�� \ ]��   \ t nset folderSizeNfsMusicHuman to do shell script "du -skh /Volumes/192.168.1.200/james/Music | awk '{print $1}'"    ] � ^ ^ � s e t   f o l d e r S i z e N f s M u s i c H u m a n   t o   d o   s h e l l   s c r i p t   " d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / M u s i c   |   a w k   ' { p r i n t   $ 1 } ' " [  _ ` _ l  P P�� a b��   a l fset folderSizeTotalHuman to do shell script "du -skh /Volumes/192.168.1.200/james/ | awk '{print $1}'"    b � c c � s e t   f o l d e r S i z e T o t a l H u m a n   t o   d o   s h e l l   s c r i p t   " d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /   |   a w k   ' { p r i n t   $ 1 } ' " `  d e d l  P P��������  ��  ��   e  f g f l  P P��������  ��  ��   g  h i h l  P P�� j k��   j  ask if would like to sync    k � l l 2 a s k   i f   w o u l d   l i k e   t o   s y n c i  m n m I  P ��� o p
�� .sysodlogaskr        TEXT o b   P m q r q b   P k s t s b   P g u v u b   P c w x w b   P a y z y b   P _ { | { b   P [ } ~ } b   P W  �  b   P U � � � m   P S � � � � � ` S y n c   D o c u m e n t s   &   M u s i c   f o l d e r s   t o   t h e   N F S   s h a r e ? � o   S T��
�� 
ret  � o   U V��
�� 
ret  ~ m   W Z � � � � � J L o c a l   D o c u m e n t s   f o l d e r   i s   c u r r e n t l y :   | o   [ ^���� 40 foldersizedocumentshuman folderSizeDocumentsHuman z o   _ `��
�� 
ret  x o   a b��
�� 
ret  v m   c f � � � � � 0 L o c a l   M u s i c   f o l d e r   i s   :   t o   g j���� ,0 foldersizemusichuman folderSizeMusicHuman r o   k l��
�� 
ret  p �� � �
�� 
btns � J   n v � �  � � � m   n q � � � � �  Y e s �  ��� � m   q t � � � � �  N o��   � �� ���
�� 
dflt � m   y | � � � � �  N o��   n  � � � r   � � � � � n   � � � � � 1   � ���
�� 
bhit � 1   � ���
�� 
rslt � o      ���� 0 dialog_answer   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 dialog_answer   � m   � � � � � � �  Y e s � k   � � � �  � � � l  � ���������  ��  ��   �  � � � Q   � � � � � � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / j a m e s / D o c u m e n t s   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / j a m e s / M u s i c   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s��   �  � � � l  � ���������  ��  ��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � T S y n c   c o m p l e t e .   Y o u   a r e   c u r r e n t l y   s y n c h i n g   � o   � ����� ,0 foldersizetotalhuman folderSizeTotalHuman � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��   �  ��� � l  � ���������  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � Z S y n c   e r r o r ,   p o s s i b l y   d u e   t o   b a d l y   n a m e d   f i l e s��   �  � � � l  � ��� � ���   � p j display dialog "error during file sync please report this error number " & error_number_4 & " " & errMsg4    � � � � �   d i s p l a y   d i a l o g   " e r r o r   d u r i n g   f i l e   s y n c   p l e a s e   r e p o r t   t h i s   e r r o r   n u m b e r   "   &   e r r o r _ n u m b e r _ 4   &   "   "   &   e r r M s g 4 �  ��� � l  � ���������  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��   /  � � � H   � � � � l  � � ����� � I  � ��� ���
�� .coredoexbool        obj  � 4   � ��� �
�� 
cdis � m   � � � � � � �  b a c k u p��  ��  ��   �  ��� � Q   �# � � � � k   �� � �  � � � I  � ��� ���
�� .aevtmvolnull���     TEXT � m   � � � � � � � > n f s : / / 1 9 2 . 1 6 8 . 1 . 2 0 0 / h o m e / b a c k u p��   �  � � � l  � ���������  ��  ��   �  � � � I  ��� � �
�� .sysodlogaskr        TEXT � b   � � � � b   � � � � m   � � � � � � � N S u c c e s s f u l l y   c o n n e c t e d   t o   n f s   s e r v e r   :   � o   � ���� 0 nfsserverip nfsServerIP � o  ��
�� 
ret  � �� � �
�� 
btns � J  	 � �  ��� � m   � � � � �  O K��   � �� ���
�� 
dflt � m  ���� ��   �    l ��������  ��  ��    r   I ���
�� .sysoexecTEXT���     TEXT m   � b d u   - s k h   / U s e r s / $ U S E R / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } '�   o      �~�~ 40 foldersizedocumentshuman folderSizeDocumentsHuman 	
	 r   + I  '�}�|
�} .sysoexecTEXT���     TEXT m   # � Z d u   - s k h   / U s e r s / $ U S E R / M u s i c   |   a w k   ' { p r i n t   $ 1 } '�|   o      �{�{ ,0 foldersizemusichuman folderSizeMusicHuman
  r  ,7 I ,3�z�y
�z .sysoexecTEXT���     TEXT m  ,/ � � d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } '�y   o      �x�x :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHuman  r  8C I 8?�w�v
�w .sysoexecTEXT���     TEXT m  8; � z d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / M u s i c   |   a w k   ' { p r i n t   $ 1 } '�v   o      �u�u 20 foldersizenfsmusichuman folderSizeNfsMusicHuman  r  DO !  I DK�t"�s
�t .sysoexecTEXT���     TEXT" m  DG## �$$ p d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /   |   a w k   ' { p r i n t   $ 1 } '�s  ! o      �r�r ,0 foldersizetotalhuman folderSizeTotalHuman %&% l PP�q�p�o�q  �p  �o  & '(' l PP�n)*�n  )  ask if would like to sync   * �++ 2 a s k   i f   w o u l d   l i k e   t o   s y n c( ,-, I P��m./
�m .sysodlogaskr        TEXT. b  P�010 b  P�232 b  P454 b  P}676 b  Py898 b  Pu:;: b  Ps<=< b  Po>?> b  Pk@A@ b  PiBCB b  PeDED b  PaFGF b  P_HIH b  P[JKJ b  PWLML b  PUNON m  PSPP �QQ ` S y n c   D o c u m e n t s   &   M u s i c   f o l d e r s   t o   t h e   N F S   s h a r e ?O o  ST�l
�l 
ret M o  UV�k
�k 
ret K m  WZRR �SS J L o c a l   D o c u m e n t s   f o l d e r   i s   c u r r e n t l y :  I o  [^�j�j 40 foldersizedocumentshuman folderSizeDocumentsHumanG o  _`�i
�i 
ret E m  adTT �UU . N F S   D o c u m e n t s   c o p y   i s :  C o  eh�h�h :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHumanA o  ij�g
�g 
ret ? m  knVV �WW 0 L o c a l   M u s i c   f o l d e r   i s   :  = o  or�f�f ,0 foldersizemusichuman folderSizeMusicHuman; o  st�e
�e 
ret 9 m  uxXX �YY & N F S   M u s i c   c o p y   i s :  7 o  y|�d�d 20 foldersizenfsmusichuman folderSizeNfsMusicHuman5 o  }~�c
�c 
ret 3 m  �ZZ �[[ 0 T o t a l   b a c k u p   f o l d e r   i s :  1 o  ���b�b ,0 foldersizetotalhuman folderSizeTotalHuman/ �a\]
�a 
btns\ J  ��^^ _`_ m  ��aa �bb  Y e s` c�`c m  ��dd �ee  N o�`  ] �_f�^
�_ 
dfltf m  ��gg �hh  N o�^  - iji r  ��klk n  ��mnm 1  ���]
�] 
bhitn 1  ���\
�\ 
rsltl o      �[�[ 0 dialog_answer  j opo l ���Z�Y�X�Z  �Y  �X  p qrq Z  ��st�W�Vs =  ��uvu o  ���U�U 0 dialog_answer  v m  ��ww �xx  Y e st k  ��yy z{z l ���T�S�R�T  �S  �R  { |}| Q  ��~�~ k  ���� ��� I ���Q��P
�Q .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / D o c u m e n t s   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /�P  � ��� I ���O��N
�O .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / M u s i c   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /�N  � ��� l ���M�L�K�M  �L  �K  � ��J� I ���I��
�I .sysodlogaskr        TEXT� b  ����� m  ���� ��� T S y n c   c o m p l e t e .   Y o u   a r e   c u r r e n t l y   s y n c h i n g  � o  ���H�H ,0 foldersizetotalhuman folderSizeTotalHuman� �G��
�G 
btns� J  ���� ��F� m  ���� ���  O K�F  � �E��D
�E 
dflt� m  ���� ���  O K�D  �J   R      �C�B�A
�C .ascrerr ****      � ****�B  �A  � k  ���� ��� I ���@��?
�@ .sysodlogaskr        TEXT� m  ���� ��� Z S y n c   e r r o r ,   p o s s i b l y   d u e   t o   b a d l y   n a m e d   f i l e s�?  � ��� l ���>���>  � p j display dialog "error during file sync please report this error number " & error_number_4 & " " & errMsg4   � ��� �   d i s p l a y   d i a l o g   " e r r o r   d u r i n g   f i l e   s y n c   p l e a s e   r e p o r t   t h i s   e r r o r   n u m b e r   "   &   e r r o r _ n u m b e r _ 4   &   "   "   &   e r r M s g 4� ��=� l ���<�;�:�<  �;  �:  �=  } ��9� l ���8�7�6�8  �7  �6  �9  �W  �V  r ��5� l ���4�3�2�4  �3  �2  �5   � R      �1�0�/
�1 .ascrerr ****      � ****�0  �/   � k   #�� ��� I  !�.��
�. .sysodlogaskr        TEXT� b   ��� b   ��� b   ��� b   ��� b   ��� b   ��� m   �� ��� N T h e r e   w a s   a n   e r r o r   m o u n t i n g   t h e   V o l u m e .� o  �-
�- 
ret � o  �,
�, 
ret � l 	
��+�*� m  
�� ��� > T h e   N F S   s e r v e r   m a y b e   o f f l i n e   -  �+  �*  � o  �)�) 0 nfsserverip nfsServerIP� o  �(
�( 
ret � o  �'
�' 
ret � �&��
�& 
btns� J  �� ��%� m  �� ���  O K�%  � �$��#
�$ 
dflt� m  �"�" �#  � ��!� l ""� ���   �  �  �!  ��  ��   , ��� l ((����  �  �  � ��� l ((����  �   else   � ��� 
   e l s e� ��� l ((����  �  �  � ��� l ((����  � v p	display dialog "Successfully connected to nfs server - " & nfsServerIP & return buttons {"OK"} default button 1   � ��� � 	 d i s p l a y   d i a l o g   " S u c c e s s f u l l y   c o n n e c t e d   t o   n f s   s e r v e r   -   "   &   n f s S e r v e r I P   &   r e t u r n   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1� ��� l ((����  �  �  � ��� l ((����  �  end if   � ���  e n d   i f�   ) R      ���
� .ascrerr ****      � ****�  �  ��   ' ��� l 33���
�  �  �
  �    m    ���                                                                                  MACS  alis    r  Macintosh HD               ��U
H+   vM}
Finder.app                                                      v��ƘY�        ����  	                CoreServices    ��U
      ƘK�     vM} vM: vM9  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    m     �	�	��  ��       ����  � �
� .aevtoappnull  �   � ****� �������
� .aevtoappnull  �   � ****� k    6��  ��  �  �  �  � K�� �  �� �� "���� 3�� <���� B������ L���� S�� � � � � � ������� � � � ��� � ����� � � ��� � �����#PRTVXZadgw�����������  0 usernametemp userNameTemp�� 0 passwordtemp passwordTemp�� 0 nfsserverip nfsServerIP�� 0 	nfsserver 	nfsServer
�� 
cdis
�� .coredoexbool        obj 
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� .sysoexecTEXT���     TEXT�� 40 foldersizedocumentshuman folderSizeDocumentsHuman�� ,0 foldersizemusichuman folderSizeMusicHuman
�� 
rslt
�� 
bhit�� 0 dialog_answer  �� ,0 foldersizetotalhuman folderSizeTotalHuman��  ��  
�� .aevtmvolnull���     TEXT�� :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHuman�� 20 foldersizenfsmusichuman folderSizeNfsMusicHuman�7�n�0�E�O�E�O�E�O�E�O*��/j  ���%�a kva ka  Oa j E` Oa j E` Oa �%�%a %_ %�%�%a %_ %�%�a a lva a a  O_ a  ,E` !O_ !a "  F 0a #j Oa $j Oa %_ &%�a 'kva a (a  OPW X ) *a +j OPOPY hOPYF*�a ,/j 7	a -j .Oa /�%�%�a 0kva ka  Oa 1j E` Oa 2j E` Oa 3j E` 4Oa 5j E` 6Oa 7j E` &Oa 8�%�%a 9%_ %�%a :%_ 4%�%a ;%_ %�%a <%_ 6%�%a =%_ &%�a >a ?lva a @a  O_ a  ,E` !O_ !a A  D .a Bj Oa Cj Oa D_ &%�a Ekva a Fa  W X ) *a Gj OPOPY hOPW *X ) *a H�%�%a I%�%�%�%�a Jkva ka  OPY hOPW X ) *hOPUoascr  ��ޭ