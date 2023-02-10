% quiver(x, y, u, v) - vector at each(x, y) pair w direction (u, v)

u = zeros(10);
v = zeros(10);

for i = 1:10
    for j = 1:10
        u(i,j) = 1;
        v(i,j) = 1;
    end
end

% changing vector at (3,1) to (5,2)
u(1,3) = 5;
v(1,3) = 2;

x = 1:10;
y = 1:10;

quiver(x, y, u, v)