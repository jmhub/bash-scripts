FasdUAS 1.101.10   ��   ��    l   P ����  t    P    O   O    k   N 	 	  
  
 l   ��������  ��  ��        r    	    m       �       o      ���� 0 usernametemp userNameTemp      r   
     m   
    �       o      ���� 0 passwordtemp passwordTemp      r        m       �    1 9 2 . 1 6 8 . 1 . 2 0 0  o      ���� 0 nfsserverip nfsServerIP      r       !   m     " " � # # * V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 ! o      ���� 0 	nfsserver 	nfsServer   $ % $ l   ��������  ��  ��   %  & ' & Q   L ( )�� ( k   C * *  + , + Z   A - . /�� - l   ! 0���� 0 I   !�� 1��
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
�� .sysodlogaskr        TEXT o b   P � q r q b   P � s t s b   P  u v u b   P } w x w b   P y y z y b   P u { | { b   P s } ~ } b   P o  �  b   P k � � � b   P i � � � b   P e � � � b   P a � � � b   P _ � � � b   P [ � � � b   P W � � � b   P U � � � m   P S � � � � � ` S y n c   D o c u m e n t s   &   M u s i c   f o l d e r s   t o   t h e   N F S   s h a r e ? � o   S T��
�� 
ret  � o   U V��
�� 
ret  � m   W Z � � � � � J L o c a l   D o c u m e n t s   f o l d e r   i s   c u r r e n t l y :   � o   [ ^���� 40 foldersizedocumentshuman folderSizeDocumentsHuman � o   _ `��
�� 
ret  � m   a d � � � � � . N F S   D o c u m e n t s   c o p y   i s :   � o   e h���� :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHuman � o   i j��
�� 
ret  � m   k n � � � � � 0 L o c a l   M u s i c   f o l d e r   i s   :   ~ o   o r���� ,0 foldersizemusichuman folderSizeMusicHuman | o   s t��
�� 
ret  z m   u x � � � � � & N F S   M u s i c   c o p y   i s :   x o   y |���� 20 foldersizenfsmusichuman folderSizeNfsMusicHuman v o   } ~��
�� 
ret  t m    � � � � � � 0 T o t a l   b a c k u p   f o l d e r   i s :   r o   � ����� ,0 foldersizetotalhuman folderSizeTotalHuman p �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� ���
�� 
dflt � m   � � � � � � �  N o��   n  � � � r   � � � � � n   � � � � � 1   � ���
�� 
bhit � 1   � ���
�� 
rslt � o      ���� 0 dialog_answer   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � =   � � � � � o   � ����� 0 dialog_answer   � m   � � � � � � �  Y e s � k   � � � �  � � � l  � ���������  ��  ��   �  � � � Q   � � � � � � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / D o c u m e n t s   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /��   �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / M u s i c   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /��   �  � � � l  � ���������  ��  ��   �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � T S y n c   c o m p l e t e .   Y o u   a r e   c u r r e n t l y   s y n c h i n g   � o   � ����� ,0 foldersizetotalhuman folderSizeTotalHuman � �� � �
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � � � �  O K��   �  ��� � l  � ���������  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � Z S y n c   e r r o r ,   p o s s i b l y   d u e   t o   b a d l y   n a m e d   f i l e s��   �  � � � l  � ��� � ���   � p j display dialog "error during file sync please report this error number " & error_number_4 & " " & errMsg4    � � � � �   d i s p l a y   d i a l o g   " e r r o r   d u r i n g   f i l e   s y n c   p l e a s e   r e p o r t   t h i s   e r r o r   n u m b e r   "   &   e r r o r _ n u m b e r _ 4   &   "   "   &   e r r M s g 4 �  ��� � l  � ���������  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��   /  � � � H   � � � l  � ����� � I  ��� ���
�� .coredoexbool        obj  � 4   ��� �
�� 
cdis � m   � � � � � �  b a c k u p��  ��  ��   �  ��� � Q  = � � � � k   � �  � � � I �� ���
�� .aevtmvolnull���     TEXT � m   � � �   > n f s : / / 1 9 2 . 1 6 8 . 1 . 2 0 0 / h o m e / b a c k u p��   �  l ��������  ��  ��    I -��
�� .sysodlogaskr        TEXT b   b  	
	 m   � N S u c c e s s f u l l y   c o n n e c t e d   t o   n f s   s e r v e r   :  
 o  ���� 0 nfsserverip nfsServerIP o  ��
�� 
ret  ��
�� 
btns J  # �� m  ! �  O K��   ����
�� 
dflt m  &'���� ��    l ..��~�}�  �~  �}    r  .9 I .5�|�{
�| .sysoexecTEXT���     TEXT m  .1 � b d u   - s k h   / U s e r s / $ U S E R / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } '�{   o      �z�z 40 foldersizedocumentshuman folderSizeDocumentsHuman  r  :E  I :A�y!�x
�y .sysoexecTEXT���     TEXT! m  :="" �## Z d u   - s k h   / U s e r s / $ U S E R / M u s i c   |   a w k   ' { p r i n t   $ 1 } '�x    o      �w�w ,0 foldersizemusichuman folderSizeMusicHuman $%$ r  FQ&'& I FM�v(�u
�v .sysoexecTEXT���     TEXT( m  FI)) �** � d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / D o c u m e n t s   |   a w k   ' { p r i n t   $ 1 } '�u  ' o      �t�t :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHuman% +,+ r  R]-.- I RY�s/�r
�s .sysoexecTEXT���     TEXT/ m  RU00 �11 z d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s / M u s i c   |   a w k   ' { p r i n t   $ 1 } '�r  . o      �q�q 20 foldersizenfsmusichuman folderSizeNfsMusicHuman, 232 r  ^i454 I ^e�p6�o
�p .sysoexecTEXT���     TEXT6 m  ^a77 �88 p d u   - s k h   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /   |   a w k   ' { p r i n t   $ 1 } '�o  5 o      �n�n ,0 foldersizetotalhuman folderSizeTotalHuman3 9:9 l jj�m�l�k�m  �l  �k  : ;<; l jj�j=>�j  =  ask if would like to sync   > �?? 2 a s k   i f   w o u l d   l i k e   t o   s y n c< @A@ I j��iBC
�i .sysodlogaskr        TEXTB b  j�DED b  j�FGF b  j�HIH b  j�JKJ b  j�LML b  j�NON b  j�PQP b  j�RSR b  j�TUT b  j�VWV b  jXYX b  j{Z[Z b  jy\]\ b  ju^_^ b  jq`a` b  jobcb m  jmdd �ee ` S y n c   D o c u m e n t s   &   M u s i c   f o l d e r s   t o   t h e   N F S   s h a r e ?c o  mn�h
�h 
ret a o  op�g
�g 
ret _ m  qtff �gg J L o c a l   D o c u m e n t s   f o l d e r   i s   c u r r e n t l y :  ] o  ux�f�f 40 foldersizedocumentshuman folderSizeDocumentsHuman[ o  yz�e
�e 
ret Y m  {~hh �ii . N F S   D o c u m e n t s   c o p y   i s :  W o  ��d�d :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHumanU o  ���c
�c 
ret S m  ��jj �kk 0 L o c a l   M u s i c   f o l d e r   i s   :  Q o  ���b�b ,0 foldersizemusichuman folderSizeMusicHumanO o  ���a
�a 
ret M m  ��ll �mm & N F S   M u s i c   c o p y   i s :  K o  ���`�` 20 foldersizenfsmusichuman folderSizeNfsMusicHumanI o  ���_
�_ 
ret G m  ��nn �oo 0 T o t a l   b a c k u p   f o l d e r   i s :  E o  ���^�^ ,0 foldersizetotalhuman folderSizeTotalHumanC �]pq
�] 
btnsp J  ��rr sts m  ��uu �vv  Y e st w�\w m  ��xx �yy  N o�\  q �[z�Z
�[ 
dfltz m  ��{{ �||  N o�Z  A }~} r  ��� n  ����� 1  ���Y
�Y 
bhit� 1  ���X
�X 
rslt� o      �W�W 0 dialog_answer  ~ ��� l ���V�U�T�V  �U  �T  � ��� Z  ����S�R� =  ����� o  ���Q�Q 0 dialog_answer  � m  ���� ���  Y e s� k  ��� ��� l ���P�O�N�P  �O  �N  � ��� Q  �
���� k  ���� ��� I ���M��L
�M .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / D o c u m e n t s   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /�L  � ��� I ���K��J
�K .sysoexecTEXT���     TEXT� m  ���� ��� � / u s r / b i n / r s y n c   - q r t   - - u p d a t e   / U s e r s / $ U S E R / M u s i c   / V o l u m e s / 1 9 2 . 1 6 8 . 1 . 2 0 0 / j a m e s /�J  � ��� l ���I�H�G�I  �H  �G  � ��F� I ���E��
�E .sysodlogaskr        TEXT� b  ����� m  ���� ��� T S y n c   c o m p l e t e .   Y o u   a r e   c u r r e n t l y   s y n c h i n g  � o  ���D�D ,0 foldersizetotalhuman folderSizeTotalHuman� �C��
�C 
btns� J  ���� ��B� m  ���� ���  O K�B  � �A��@
�A 
dflt� m  ���� ���  O K�@  �F  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  � k  
�� ��� I �<��;
�< .sysodlogaskr        TEXT� m  �� ��� Z S y n c   e r r o r ,   p o s s i b l y   d u e   t o   b a d l y   n a m e d   f i l e s�;  � ��� l 		�:���:  � p j display dialog "error during file sync please report this error number " & error_number_4 & " " & errMsg4   � ��� �   d i s p l a y   d i a l o g   " e r r o r   d u r i n g   f i l e   s y n c   p l e a s e   r e p o r t   t h i s   e r r o r   n u m b e r   "   &   e r r o r _ n u m b e r _ 4   &   "   "   &   e r r M s g 4� ��9� l 		�8�7�6�8  �7  �6  �9  � ��5� l �4�3�2�4  �3  �2  �5  �S  �R  � ��1� l �0�/�.�0  �/  �.  �1   � R      �-�,�+
�- .ascrerr ****      � ****�,  �+   � k  =�� ��� I ;�*��
�* .sysodlogaskr        TEXT� b  +��� b  )��� b  '��� b  %��� b  !��� b  ��� m  �� ��� N T h e r e   w a s   a n   e r r o r   m o u n t i n g   t h e   V o l u m e .� o  �)
�) 
ret � o   �(
�( 
ret � l 	!$��'�&� m  !$�� ��� > T h e   N F S   s e r v e r   m a y b e   o f f l i n e   -  �'  �&  � o  %&�%�% 0 nfsserverip nfsServerIP� o  '(�$
�$ 
ret � o  )*�#
�# 
ret � �"��
�" 
btns� J  ,1�� ��!� m  ,/�� ���  O K�!  � � ��
�  
dflt� m  45�� �  � ��� l <<����  �  �  �  ��  ��   , ��� l BB����  �  �  � ��� l BB����  �   else   � ��� 
   e l s e� ��� l BB����  �  �  � ��� l BB����  � v p	display dialog "Successfully connected to nfs server - " & nfsServerIP & return buttons {"OK"} default button 1   � ��� � 	 d i s p l a y   d i a l o g   " S u c c e s s f u l l y   c o n n e c t e d   t o   n f s   s e r v e r   -   "   &   n f s S e r v e r I P   &   r e t u r n   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1� ��� l BB����  �  �  � ��� l BB����  �  end if   � ���  e n d   i f�   ) R      ���

� .ascrerr ****      � ****�  �
  ��   ' ��	� l MM����  �  �  �	    m    ���                                                                                  MACS   alis    r  Macintosh HD               ��U
H+     t
Finder.app                                                       u$ó3"        ����  	                CoreServices    ��U
      ó3"       t   0   /  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    m     ����  ��       ����  � �
� .aevtoappnull  �   � ****� ���� ����
� .aevtoappnull  �   � ****� k    P��  ����  �  �   �  � N��� �� �� �� "���� 3�� <���� B������ L���� S�� � � ��� � ��� ��� � � ������� � � � � � ����� � � ���")07dfhjlnux{�������������� 0 usernametemp userNameTemp�� 0 passwordtemp passwordTemp�� 0 nfsserverip nfsServerIP�� 0 	nfsserver 	nfsServer
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
�� .sysoexecTEXT���     TEXT�� 40 foldersizedocumentshuman folderSizeDocumentsHuman�� ,0 foldersizemusichuman folderSizeMusicHuman�� :0 foldersizenfsdocumentshuman folderSizeNfsDocumentsHuman�� 20 foldersizenfsmusichuman folderSizeNfsMusicHuman�� ,0 foldersizetotalhuman folderSizeTotalHuman
�� 
rslt
�� 
bhit�� 0 dialog_answer  ��  ��  
�� .aevtmvolnull���     TEXT��Q�n�J�E�O�E�O�E�O�E�O/*��/j  ���%�a kva ka  Oa j E` Oa j E` Oa �%�%a %_ %�%a %_ %�%a %_ %�%a %_ %�%a  %_ !%�a "a #lva a $a  O_ %a &,E` 'O_ 'a (  F 0a )j Oa *j Oa +_ !%�a ,kva a -a  OPW X . /a 0j OPOPY hOPYF*�a 1/j 7	a 2j 3Oa 4�%�%�a 5kva ka  Oa 6j E` Oa 7j E` Oa 8j E` Oa 9j E` Oa :j E` !Oa ;�%�%a <%_ %�%a =%_ %�%a >%_ %�%a ?%_ %�%a @%_ !%�a Aa Blva a Ca  O_ %a &,E` 'O_ 'a D  D .a Ej Oa Fj Oa G_ !%�a Hkva a Ia  W X . /a Jj OPOPY hOPW *X . /a K�%�%a L%�%�%�%�a Mkva ka  OPY hOPW X . /hOPUo ascr  ��ޭ