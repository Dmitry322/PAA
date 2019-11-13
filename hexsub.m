function pos = hexsub(first,NxNy,dydz)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 Nx = NxNy(1,1);           
 Ny = NxNy(1,2);
 dy = dydz(1,1);           
 dz = dydz(1,2);
rows=Nx*ones(1,Ny);
stop=cumsum(rows);
stop(:,2:2:end)=[];
start = stop-Nx+1;
starts=stop+1;
stops=starts+Nx-1;
Y=((0:(Nx-1))*dy)+first(1);
Z=flip((-(Ny-1):0)*dz+first(2));
f=1:Ny;
v=f(:,2:2:end);
f(:,2:2:end)=[];
count = 0;
clear pos;
for i = f
    count = count+1;
    idl = start(count):stop(count);
    pos(1,idl) = Y;
    pos(2,idl) = Z(1,i);
end
count=0;
for j = v
    count = count+1;
    idr = starts(count):stops(count);
    pos(1,idr) = Y+(Y(1,2)-Y(1,1))/2;
    pos(2,idr) = Z(1,j);
end
end

