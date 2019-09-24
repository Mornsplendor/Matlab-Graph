function W=adjacent2incidence(F,f)

if f==0  %�ڽӾ���ת��Ϊ��������
    m=sum(sum(F))/2; %����ͼ�ı���
    n=size(F,1); %�����ĸ���
    if m==n
            W=zeros(n,m);%��ʼ����������
            k=1; %����ߵ�ѭ������
     %%��ʼ�����Ƚ�������֮��Ĺ�ϵ
    for i=1:n
        for j=i:n
            if F(i,j)~=0 %�������֮���бߣ���д���������
                W(i,k)=1; %���ߵ�ʼ�㸳ֵΪ1
                W(j,k)=1; %���ߵ��յ㸳ֵΪ1
                k=k+1;
            end
        end
    end
    else
        fprintf('F is not square array');
    end


    
else if f==1 %��������ת��Ϊ�ڽӾ���
        m=size(F,2); %��ñ���
        n=size(F,1); %��ö�����
        W=zeros(n,n);
        for i=1:m
            a=find(F(:,i)~=0); %�ҵ�������ڵĽڵ�
            W(a(1),a(2))=1;
            W(a(2),a(1))=1;
        end
    
else
        fprintf('The value of f is wrong');
      end
end