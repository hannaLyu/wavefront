function Queue = f_Insert(Queue,element)
[m,n] = size(Queue);
Queue(m+1,:) = element;
end
