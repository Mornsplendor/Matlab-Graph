function W=adjacent2incidence(F,f)

if f==0  %邻接矩阵转化为关联矩阵
    m=sum(sum(F))/2; %计算图的边数
    n=size(F,1); %计算点的个数
    if m==n
            W=zeros(n,m);%初始化关联矩阵
            k=1; %定义边的循环变量
     %%开始遍历比较两个点之间的关系
    for i=1:n
        for j=i:n
            if F(i,j)~=0 %如果两点之间有边，则写入关联矩阵
                W(i,k)=1; %给边的始点赋值为1
                W(j,k)=1; %给边的终点赋值为1
                k=k+1;
            end
        end
    end
    else
        fprintf('F is not square array');
    end


    
else if f==1 %关联矩阵转换为邻接矩阵
        m=size(F,2); %获得边数
        n=size(F,1); %获得顶点数
        W=zeros(n,n);
        for i=1:m
            a=find(F(:,i)~=0); %找到与边相邻的节点
            W(a(1),a(2))=1;
            W(a(2),a(1))=1;
        end
    
else
        fprintf('The value of f is wrong');
      end
end