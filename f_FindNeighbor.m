function NeighborPose = f_FindNeighbor(pose, map)
mapsize = size(map);
maph = mapsize(1);
mapw = mapsize(2);
k=1;

for i = pose(1)-1:1:pose(1)+1
    for j = pose(2)-1:1:pose(2)+1
        if ((i>0 && j>0 && i<maph && j<mapw && map(i,j) ~= 1))
            if (i==pose(1) && j==pose(2))
            else
                NeighborPose(k,:) = [i,j];
                k = k + 1;
            end
        end
    end
end
end
