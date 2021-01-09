select min(round(sqrt(power(p1.x-p2.x,2) + power(p1.y-p2.y, 2)),2)) shortest
from point_2d p1, point_2d p2
where not (p1.x = p2.x and p1.y = p2.y)