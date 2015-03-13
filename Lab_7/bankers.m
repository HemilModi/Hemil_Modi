function k = bankers(cMatrix,aMatrix,aVector)

cMatrixSize = size(cMatrix);
%aMatrixSize = size(aMatrix);
%aVectorSize = size(aVector);
needMatrix = cMatrix - aMatrix;

count = 0;
while 1

    count = count + 1;
    for i = 1:1:cMatrixSize(1)

        if(needMatrix(i,:) <= aVector)
            aVector = aVector + aMatrix(i,:);
            aMatrix(i,:) = 0;
            cMatrix(i,:) = 0;
            if count>1
                output(cMatrixSize(1)+1)=i;
                break
            end 
            output(i)= i;
        end   
    end
    
    if cMatrix == 0
        for j = 1:1:cMatrixSize(1)
            if output(j) == 0
                b = output;
                b(j) = [];
                output = b;
            end
        end  
        disp(output);
        break
    end
end

end