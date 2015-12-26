function A = convertIP()
filenameIn='~/Documents/small-atk.xlsx'
%read table 
M = readtable(filenameIn);
%Source = M(2:2,3:3) %(access the table)
A=table2cell(M);
%A{1:1,3:3}= {192.168.1.2} % (store things in the cells)
for j = 1 : length( A )
        A{j:j,2:2}={IP2Integer(A{j:j,2:2})};
        A{j:j,3:3}={IP2Integer(A{j:j,3:3})}; 
        if strcmp(A{j:j,4:4},'UDP')
            A{j:j,4:4}={1};    
        elseif strcmp(A{j:j,4:4},'TCP')
            A{j:j,4:4}={2};
        else
            A{j:j,4:4}={1};
        end
        %quick fix for the time
end
%unnest 
A(:,2) = vertcat(A{:,2});
A(:,3) = vertcat(A{:,3});
A(:,4) = vertcat(A{:,4});
end
