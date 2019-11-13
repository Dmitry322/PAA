function pos = rectsub(first,NxNy,dxdy)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Nx = NxNy(1,1);           
Ny = NxNy(1,2);
dx = dxdy(1,1);           
dy = dxdy(1,2);
rows=Nx*ones(1,Ny);
stop=cumsum(rows);
start = stop-Nx+1;
X=((0:(Nx-1))*dx)+first(1);
Y=flip((-(Ny-1):0)*dy+first(2));
count = 0;
clear pos;
for i = 1:Ny
    count = count+1;
    idl = start(count):stop(count);
    pos(1,idl) = X;
    pos(2,idl) = Y(1,i);
end
end

