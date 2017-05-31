% Author: Nawaf k. Abdullah
% Simulation of gas diffusion is 3D
% Reference: Computational Physics 2nd Edition - Nicholas J. Giordano and
% Hisao Nakanishi

numIt=input('Enter number of iterations > ');
x=50;
y=50;
z=50;
grid = zeros(x,y,z);

for a=20:30
    for b=20:30
        for c=20:30
            grid(a,b,c)=1;
        end
    end
end

for n=1:numIt
for i=2:x-1
    for j=2:y-2
        for k=2:z-2
             if ( grid(i,j,k)== 1 )
                grid(i,j,k)=0;
                
                r=rand(1);
             %Direction possibility #1
             if (r < 0.1666)
                if ( grid(i+1,j,k)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i+1,j,k)=1;
                end
             end
             %Direction possibility #2
             if (r >= 0.1666 && r < 0.3332)
                if ( grid(i-1,j,k)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i-1,j,k)=1;
                end
             end
             %Direction possibility #3
             if (r >= 0.3332 && r < 0.5000)
                if ( grid(i,j+1,k)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i,j+1,k)=1;
                end
             end
             %Direction possibility #4
             if (r >= 0.5000 && r < 0.6666)
                if ( grid(i,j-1,k)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i,j-1,k)=1;
                end
             end
             %Direction possibility #5
             if (r >= 0.6666 && r < 0.8333)
                if ( grid(i,j,k+1)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i,j,k+1)=1;
                end
             end
             %Direction possibility #6
             if (r >= 0.8333)
                if ( grid(i,j,k-1)==1 )
                    grid(i,j,k)=1;
                else
                    grid(i,j,k-1)=1;
                end
             end
             
             else
                 
             end
        end
    end
end
%Plot
figure(1)
xslice = [25, 50]; % location of y-z planes
yslice = [25, 50]; % location of x-z plane
zslice = [1, 25]; % location of x-y planes
slice(grid,xslice,yslice,zslice)
drawnow
end


