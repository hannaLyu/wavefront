function mapnew = f_Wavefront(map, startpose, goalpose)
mapnew = map;
mapnew(goalpose(1),goalpose(2))= 2;
Queue = goalpose;

while ((Queue(1,1)~=startpose(1)) || (Queue(1,2)~=startpose(2)))
    
   ele = Queue(1,:);
   neigbpose = f_FindNeighbor(ele, mapnew);
    
    for i = 1:1:size(neigbpose,1)
      
        if ((ele(1)==neigbpose(i,1)) || (ele(2)==neigbpose(i,2)))
            d = mapnew(ele(1),ele(2))+1;
        else
            d= mapnew(ele(1),ele(2))+sqrt(2);
        end
        
        if (mapnew(neigbpose(i,1),neigbpose(i,2))== 0)
            mapnew(neigbpose(i,1),neigbpose(i,2))= d;
            Queue= f_Insert(Queue, neigbpose(i,:));
        else
            if (mapnew(neigbpose(i,1),neigbpose(i,2))>d)
                mapnew(neigbpose(i,1),neigbpose(i,2))=d;
            end
        end
        
    end
    m= size(Queue,1);
    Queue = Queue(2:m,:)
end
end