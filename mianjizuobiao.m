%%1 注释部分
%程序文件名：mianjizuobiao.m，用途：计算xy平面上点P（x，y）关于三角形T（顶点为ABC）的
%面积坐标（u，v，w） 
%%李兵于2019年12月11日创建。
%% 输入变量：
% A,B,C- 平面上三角形T的顶点，坐标分别为：Ax,Ay;Bx,By;Cx,Cy；平面上点P的坐标Px，Py。
%% 输出变量：
%（u，v，w） - 点P（x，y）关于三角形T的面积坐标 
% 参数值- 
%
% 输入部分：（注意，每个命令后要用分号结束） 
  clear       %清除工作空间中的变量
  disp('输入点的坐标时请注意：若点的坐标为(x,y)，则须输入:“[x,y]”');
  P=input('请输入点P的坐标[Px Py]：'); 
  A=input('请输入点A的坐标[Ax Ay]：'); 
  B=input('请输入点B的坐标[Bx By]：'); 
  C=input('请输入点C的坐标[Cx Cy]：'); 
   S=[1 A(1) A(2);1 B(1) B(2);1 C(1) C(2)];
   s=det(S);
% 判断三角形T的面积是否为零   
   if s==0
   disp('三角形坐标不符合要求，请重新输入！');
   end
% 计算部分：
    S1=[1 P(1) P(2);1 B(1) B(2);1 C(1) C(2)];
    s1=det(S1);
    S2=[1 A(1) A(2);1 P(1) P(2);1 C(1) C(2)];
    s2=det(S2);
    S3=[1 A(1) A(2);1 B(1) B(2);1 P(1) P(2)];
    s3=det(S3);
    u=s1/s;
    v=s2/s;
    w=s3/s;
% 输出部分：
disp('点P关于三角形T（顶点为ABC）的面积坐标（u，v，w） 为：'); %disp()为显示输出数据函数
disp(['(u,v,w)=(',num2str([u v w]),')']);
disp(['u+v+w=',num2str(u+v+w)]);

% 程序结束
